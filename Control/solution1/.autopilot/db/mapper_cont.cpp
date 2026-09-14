#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_buffer_1_rd_cap_bc;
static AESL_RUNTIME_BC __xlx_buffer_1_rd_V_size_Reader("../tv/stream_size/stream_size_in_buffer_1_rd.dat");
unsigned int ap_apatb_buffer_1_rd1_cap_bc;
static AESL_RUNTIME_BC __xlx_buffer_1_rd1_V_size_Reader("../tv/stream_size/stream_size_in_buffer_1_rd1.dat");
unsigned int ap_apatb_buffer_1_rd2_cap_bc;
static AESL_RUNTIME_BC __xlx_buffer_1_rd2_V_size_Reader("../tv/stream_size/stream_size_in_buffer_1_rd2.dat");
unsigned int ap_apatb_buffer_1_rd3_cap_bc;
static AESL_RUNTIME_BC __xlx_buffer_1_rd3_V_size_Reader("../tv/stream_size/stream_size_in_buffer_1_rd3.dat");
using hls::sim::Byte;
struct __cosim_s1__ { char data[1]; };
struct __cosim_s2__ { char data[2]; };
extern "C" void cont(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, char, char, char, char, __cosim_s1__, __cosim_s2__, volatile void *, volatile void *, int*, int*, int*, int*, Byte<8>*, Byte<8>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, volatile void *, char, volatile void *, char, volatile void *, char, volatile void *, char, volatile void *, volatile void *);
extern "C" void apatb_cont_hw(volatile void * __xlx_apatb_param_a_i_valid, volatile void * __xlx_apatb_param_a_i_ready, volatile void * __xlx_apatb_param_a_i_data, volatile void * __xlx_apatb_param_a_i_strb, volatile void * __xlx_apatb_param_b_i_valid, volatile void * __xlx_apatb_param_b_i_ready, volatile void * __xlx_apatb_param_b_i_data, volatile void * __xlx_apatb_param_b_i_strb, volatile void * __xlx_apatb_param_c_i_valid, volatile void * __xlx_apatb_param_c_i_ready, volatile void * __xlx_apatb_param_c_i_data, volatile void * __xlx_apatb_param_c_i_strb, volatile void * __xlx_apatb_param_d_o_valid, volatile void * __xlx_apatb_param_d_o_ready, volatile void * __xlx_apatb_param_d_o_data, volatile void * __xlx_apatb_param_d_o_strb, char __xlx_apatb_param_clear, char __xlx_apatb_param_enable, char __xlx_apatb_param_function_r, char __xlx_apatb_param_start_r, __cosim_s1__* __xlx_apatb_param_shift, __cosim_s2__* __xlx_apatb_param_len, volatile void * __xlx_apatb_param_f_cnt, volatile void * __xlx_apatb_param_f_valid, volatile void * __xlx_apatb_param_buffer_1_rd, volatile void * __xlx_apatb_param_buffer_1_rd1, volatile void * __xlx_apatb_param_buffer_1_rd2, volatile void * __xlx_apatb_param_buffer_1_rd3, volatile void * __xlx_apatb_param_buffer_1_wr, volatile void * __xlx_apatb_param_buffer_1_wr1, volatile void * __xlx_apatb_param_buffer_1_wr2a, volatile void * __xlx_apatb_param_buffer_1_wr2b, volatile void * __xlx_apatb_param_buffer_1_wr3a, volatile void * __xlx_apatb_param_buffer_1_wr3b, volatile void * __xlx_apatb_param_compute_start1, char __xlx_apatb_param_compute_done1, volatile void * __xlx_apatb_param_compute_start2, char __xlx_apatb_param_compute_done2, volatile void * __xlx_apatb_param_slave_start1, char __xlx_apatb_param_slave_done1, volatile void * __xlx_apatb_param_slave_start2, char __xlx_apatb_param_slave_done2, volatile void * __xlx_apatb_param_phase1, volatile void * __xlx_apatb_param_phase2) {
using hls::sim::createStream;
auto* sbuffer_1_rd = createStream((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd);
auto* sbuffer_1_rd1 = createStream((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd1);
auto* sbuffer_1_rd2 = createStream((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd2);
auto* sbuffer_1_rd3 = createStream((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd3);
  // Collect __xlx_buffer_1_wr__tmp_vec
std::vector<Byte<8>> __xlx_buffer_1_wr__tmp_vec;
for (size_t i = 0; i < 20; ++i){
__xlx_buffer_1_wr__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_buffer_1_wr)[i]);
}
  int __xlx_size_param_buffer_1_wr = 20;
  int __xlx_offset_param_buffer_1_wr = 0;
  int __xlx_offset_byte_param_buffer_1_wr = 0*8;
  // Collect __xlx_buffer_1_wr1__tmp_vec
std::vector<Byte<8>> __xlx_buffer_1_wr1__tmp_vec;
for (size_t i = 0; i < 20; ++i){
__xlx_buffer_1_wr1__tmp_vec.push_back(((Byte<8>*)__xlx_apatb_param_buffer_1_wr1)[i]);
}
  int __xlx_size_param_buffer_1_wr1 = 20;
  int __xlx_offset_param_buffer_1_wr1 = 0;
  int __xlx_offset_byte_param_buffer_1_wr1 = 0*8;
  // Collect __xlx_buffer_1_wr2a__tmp_vec
std::vector<Byte<4>> __xlx_buffer_1_wr2a__tmp_vec;
for (size_t i = 0; i < 20; ++i){
__xlx_buffer_1_wr2a__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_buffer_1_wr2a)[i]);
}
  int __xlx_size_param_buffer_1_wr2a = 20;
  int __xlx_offset_param_buffer_1_wr2a = 0;
  int __xlx_offset_byte_param_buffer_1_wr2a = 0*4;
  // Collect __xlx_buffer_1_wr2b__tmp_vec
std::vector<Byte<4>> __xlx_buffer_1_wr2b__tmp_vec;
for (size_t i = 0; i < 20; ++i){
__xlx_buffer_1_wr2b__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_buffer_1_wr2b)[i]);
}
  int __xlx_size_param_buffer_1_wr2b = 20;
  int __xlx_offset_param_buffer_1_wr2b = 0;
  int __xlx_offset_byte_param_buffer_1_wr2b = 0*4;
  // Collect __xlx_buffer_1_wr3a__tmp_vec
std::vector<Byte<4>> __xlx_buffer_1_wr3a__tmp_vec;
for (size_t i = 0; i < 20; ++i){
__xlx_buffer_1_wr3a__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_buffer_1_wr3a)[i]);
}
  int __xlx_size_param_buffer_1_wr3a = 20;
  int __xlx_offset_param_buffer_1_wr3a = 0;
  int __xlx_offset_byte_param_buffer_1_wr3a = 0*4;
  // Collect __xlx_buffer_1_wr3b__tmp_vec
std::vector<Byte<4>> __xlx_buffer_1_wr3b__tmp_vec;
for (size_t i = 0; i < 20; ++i){
__xlx_buffer_1_wr3b__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_buffer_1_wr3b)[i]);
}
  int __xlx_size_param_buffer_1_wr3b = 20;
  int __xlx_offset_param_buffer_1_wr3b = 0;
  int __xlx_offset_byte_param_buffer_1_wr3b = 0*4;
  // DUT call
  cont(__xlx_apatb_param_a_i_valid, __xlx_apatb_param_a_i_ready, __xlx_apatb_param_a_i_data, __xlx_apatb_param_a_i_strb, __xlx_apatb_param_b_i_valid, __xlx_apatb_param_b_i_ready, __xlx_apatb_param_b_i_data, __xlx_apatb_param_b_i_strb, __xlx_apatb_param_c_i_valid, __xlx_apatb_param_c_i_ready, __xlx_apatb_param_c_i_data, __xlx_apatb_param_c_i_strb, __xlx_apatb_param_d_o_valid, __xlx_apatb_param_d_o_ready, __xlx_apatb_param_d_o_data, __xlx_apatb_param_d_o_strb, __xlx_apatb_param_clear, __xlx_apatb_param_enable, __xlx_apatb_param_function_r, __xlx_apatb_param_start_r, *__xlx_apatb_param_shift, *__xlx_apatb_param_len, __xlx_apatb_param_f_cnt, __xlx_apatb_param_f_valid, sbuffer_1_rd->data<int>(), sbuffer_1_rd1->data<int>(), sbuffer_1_rd2->data<int>(), sbuffer_1_rd3->data<int>(), __xlx_buffer_1_wr__tmp_vec.data(), __xlx_buffer_1_wr1__tmp_vec.data(), __xlx_buffer_1_wr2a__tmp_vec.data(), __xlx_buffer_1_wr2b__tmp_vec.data(), __xlx_buffer_1_wr3a__tmp_vec.data(), __xlx_buffer_1_wr3b__tmp_vec.data(), __xlx_apatb_param_compute_start1, __xlx_apatb_param_compute_done1, __xlx_apatb_param_compute_start2, __xlx_apatb_param_compute_done2, __xlx_apatb_param_slave_start1, __xlx_apatb_param_slave_done1, __xlx_apatb_param_slave_start2, __xlx_apatb_param_slave_done2, __xlx_apatb_param_phase1, __xlx_apatb_param_phase2);
sbuffer_1_rd->transfer((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd);
sbuffer_1_rd1->transfer((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd1);
sbuffer_1_rd2->transfer((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd2);
sbuffer_1_rd3->transfer((hls::stream<int>*)__xlx_apatb_param_buffer_1_rd3);
// print __xlx_apatb_param_buffer_1_wr
for (size_t i = 0; i < __xlx_size_param_buffer_1_wr; ++i) {
((Byte<8>*)__xlx_apatb_param_buffer_1_wr)[i] = __xlx_buffer_1_wr__tmp_vec[__xlx_offset_param_buffer_1_wr+i];
}
// print __xlx_apatb_param_buffer_1_wr1
for (size_t i = 0; i < __xlx_size_param_buffer_1_wr1; ++i) {
((Byte<8>*)__xlx_apatb_param_buffer_1_wr1)[i] = __xlx_buffer_1_wr1__tmp_vec[__xlx_offset_param_buffer_1_wr1+i];
}
// print __xlx_apatb_param_buffer_1_wr2a
for (size_t i = 0; i < __xlx_size_param_buffer_1_wr2a; ++i) {
((Byte<4>*)__xlx_apatb_param_buffer_1_wr2a)[i] = __xlx_buffer_1_wr2a__tmp_vec[__xlx_offset_param_buffer_1_wr2a+i];
}
// print __xlx_apatb_param_buffer_1_wr2b
for (size_t i = 0; i < __xlx_size_param_buffer_1_wr2b; ++i) {
((Byte<4>*)__xlx_apatb_param_buffer_1_wr2b)[i] = __xlx_buffer_1_wr2b__tmp_vec[__xlx_offset_param_buffer_1_wr2b+i];
}
// print __xlx_apatb_param_buffer_1_wr3a
for (size_t i = 0; i < __xlx_size_param_buffer_1_wr3a; ++i) {
((Byte<4>*)__xlx_apatb_param_buffer_1_wr3a)[i] = __xlx_buffer_1_wr3a__tmp_vec[__xlx_offset_param_buffer_1_wr3a+i];
}
// print __xlx_apatb_param_buffer_1_wr3b
for (size_t i = 0; i < __xlx_size_param_buffer_1_wr3b; ++i) {
((Byte<4>*)__xlx_apatb_param_buffer_1_wr3b)[i] = __xlx_buffer_1_wr3b__tmp_vec[__xlx_offset_param_buffer_1_wr3b+i];
}
}
