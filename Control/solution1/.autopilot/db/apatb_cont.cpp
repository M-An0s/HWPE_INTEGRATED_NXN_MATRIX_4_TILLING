#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_a_i_valid "../tv/cdatafile/c.cont.autotvin_a_i_valid.dat"
#define AUTOTB_TVOUT_a_i_valid "../tv/cdatafile/c.cont.autotvout_a_i_valid.dat"
#define AUTOTB_TVIN_a_i_ready "../tv/cdatafile/c.cont.autotvin_a_i_ready.dat"
#define AUTOTB_TVOUT_a_i_ready "../tv/cdatafile/c.cont.autotvout_a_i_ready.dat"
#define AUTOTB_TVIN_a_i_data "../tv/cdatafile/c.cont.autotvin_a_i_data.dat"
#define AUTOTB_TVOUT_a_i_data "../tv/cdatafile/c.cont.autotvout_a_i_data.dat"
#define AUTOTB_TVIN_a_i_strb "../tv/cdatafile/c.cont.autotvin_a_i_strb.dat"
#define AUTOTB_TVOUT_a_i_strb "../tv/cdatafile/c.cont.autotvout_a_i_strb.dat"
#define AUTOTB_TVIN_b_i_valid "../tv/cdatafile/c.cont.autotvin_b_i_valid.dat"
#define AUTOTB_TVOUT_b_i_valid "../tv/cdatafile/c.cont.autotvout_b_i_valid.dat"
#define AUTOTB_TVIN_b_i_ready "../tv/cdatafile/c.cont.autotvin_b_i_ready.dat"
#define AUTOTB_TVOUT_b_i_ready "../tv/cdatafile/c.cont.autotvout_b_i_ready.dat"
#define AUTOTB_TVIN_b_i_data "../tv/cdatafile/c.cont.autotvin_b_i_data.dat"
#define AUTOTB_TVOUT_b_i_data "../tv/cdatafile/c.cont.autotvout_b_i_data.dat"
#define AUTOTB_TVIN_b_i_strb "../tv/cdatafile/c.cont.autotvin_b_i_strb.dat"
#define AUTOTB_TVOUT_b_i_strb "../tv/cdatafile/c.cont.autotvout_b_i_strb.dat"
#define AUTOTB_TVIN_c_i_valid "../tv/cdatafile/c.cont.autotvin_c_i_valid.dat"
#define AUTOTB_TVOUT_c_i_valid "../tv/cdatafile/c.cont.autotvout_c_i_valid.dat"
#define AUTOTB_TVIN_c_i_ready "../tv/cdatafile/c.cont.autotvin_c_i_ready.dat"
#define AUTOTB_TVOUT_c_i_ready "../tv/cdatafile/c.cont.autotvout_c_i_ready.dat"
#define AUTOTB_TVIN_c_i_data "../tv/cdatafile/c.cont.autotvin_c_i_data.dat"
#define AUTOTB_TVOUT_c_i_data "../tv/cdatafile/c.cont.autotvout_c_i_data.dat"
#define AUTOTB_TVIN_c_i_strb "../tv/cdatafile/c.cont.autotvin_c_i_strb.dat"
#define AUTOTB_TVOUT_c_i_strb "../tv/cdatafile/c.cont.autotvout_c_i_strb.dat"
#define AUTOTB_TVIN_d_o_valid "../tv/cdatafile/c.cont.autotvin_d_o_valid.dat"
#define AUTOTB_TVOUT_d_o_valid "../tv/cdatafile/c.cont.autotvout_d_o_valid.dat"
#define AUTOTB_TVIN_d_o_ready "../tv/cdatafile/c.cont.autotvin_d_o_ready.dat"
#define AUTOTB_TVOUT_d_o_ready "../tv/cdatafile/c.cont.autotvout_d_o_ready.dat"
#define AUTOTB_TVIN_d_o_data "../tv/cdatafile/c.cont.autotvin_d_o_data.dat"
#define AUTOTB_TVOUT_d_o_data "../tv/cdatafile/c.cont.autotvout_d_o_data.dat"
#define AUTOTB_TVIN_d_o_strb "../tv/cdatafile/c.cont.autotvin_d_o_strb.dat"
#define AUTOTB_TVOUT_d_o_strb "../tv/cdatafile/c.cont.autotvout_d_o_strb.dat"
#define AUTOTB_TVIN_clear "../tv/cdatafile/c.cont.autotvin_clear.dat"
#define AUTOTB_TVOUT_clear "../tv/cdatafile/c.cont.autotvout_clear.dat"
#define AUTOTB_TVIN_enable "../tv/cdatafile/c.cont.autotvin_enable.dat"
#define AUTOTB_TVOUT_enable "../tv/cdatafile/c.cont.autotvout_enable.dat"
#define AUTOTB_TVIN_function_r "../tv/cdatafile/c.cont.autotvin_function_r.dat"
#define AUTOTB_TVOUT_function_r "../tv/cdatafile/c.cont.autotvout_function_r.dat"
#define AUTOTB_TVIN_start_r "../tv/cdatafile/c.cont.autotvin_start_r.dat"
#define AUTOTB_TVOUT_start_r "../tv/cdatafile/c.cont.autotvout_start_r.dat"
#define AUTOTB_TVIN_shift "../tv/cdatafile/c.cont.autotvin_shift.dat"
#define AUTOTB_TVOUT_shift "../tv/cdatafile/c.cont.autotvout_shift.dat"
#define AUTOTB_TVIN_len "../tv/cdatafile/c.cont.autotvin_len.dat"
#define AUTOTB_TVOUT_len "../tv/cdatafile/c.cont.autotvout_len.dat"
#define AUTOTB_TVIN_f_cnt "../tv/cdatafile/c.cont.autotvin_f_cnt.dat"
#define AUTOTB_TVOUT_f_cnt "../tv/cdatafile/c.cont.autotvout_f_cnt.dat"
#define AUTOTB_TVIN_f_valid "../tv/cdatafile/c.cont.autotvin_f_valid.dat"
#define AUTOTB_TVOUT_f_valid "../tv/cdatafile/c.cont.autotvout_f_valid.dat"
#define AUTOTB_TVIN_buffer_1_rd "../tv/cdatafile/c.cont.autotvin_buffer_1_rd.dat"
#define WRAPC_STREAM_SIZE_IN_buffer_1_rd "../tv/stream_size/stream_size_in_buffer_1_rd.dat"
#define WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd "../tv/stream_size/stream_ingress_status_buffer_1_rd.dat"
#define AUTOTB_TVIN_buffer_1_rd1 "../tv/cdatafile/c.cont.autotvin_buffer_1_rd1.dat"
#define WRAPC_STREAM_SIZE_IN_buffer_1_rd1 "../tv/stream_size/stream_size_in_buffer_1_rd1.dat"
#define WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd1 "../tv/stream_size/stream_ingress_status_buffer_1_rd1.dat"
#define AUTOTB_TVIN_buffer_1_rd2 "../tv/cdatafile/c.cont.autotvin_buffer_1_rd2.dat"
#define WRAPC_STREAM_SIZE_IN_buffer_1_rd2 "../tv/stream_size/stream_size_in_buffer_1_rd2.dat"
#define WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd2 "../tv/stream_size/stream_ingress_status_buffer_1_rd2.dat"
#define AUTOTB_TVIN_buffer_1_rd3 "../tv/cdatafile/c.cont.autotvin_buffer_1_rd3.dat"
#define WRAPC_STREAM_SIZE_IN_buffer_1_rd3 "../tv/stream_size/stream_size_in_buffer_1_rd3.dat"
#define WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd3 "../tv/stream_size/stream_ingress_status_buffer_1_rd3.dat"
#define AUTOTB_TVIN_buffer_1_wr "../tv/cdatafile/c.cont.autotvin_buffer_1_wr.dat"
#define AUTOTB_TVOUT_buffer_1_wr "../tv/cdatafile/c.cont.autotvout_buffer_1_wr.dat"
#define AUTOTB_TVIN_buffer_1_wr1 "../tv/cdatafile/c.cont.autotvin_buffer_1_wr1.dat"
#define AUTOTB_TVOUT_buffer_1_wr1 "../tv/cdatafile/c.cont.autotvout_buffer_1_wr1.dat"
#define AUTOTB_TVIN_buffer_1_wr2a "../tv/cdatafile/c.cont.autotvin_buffer_1_wr2a.dat"
#define AUTOTB_TVOUT_buffer_1_wr2a "../tv/cdatafile/c.cont.autotvout_buffer_1_wr2a.dat"
#define AUTOTB_TVIN_buffer_1_wr2b "../tv/cdatafile/c.cont.autotvin_buffer_1_wr2b.dat"
#define AUTOTB_TVOUT_buffer_1_wr2b "../tv/cdatafile/c.cont.autotvout_buffer_1_wr2b.dat"
#define AUTOTB_TVIN_buffer_1_wr3a "../tv/cdatafile/c.cont.autotvin_buffer_1_wr3a.dat"
#define AUTOTB_TVOUT_buffer_1_wr3a "../tv/cdatafile/c.cont.autotvout_buffer_1_wr3a.dat"
#define AUTOTB_TVIN_buffer_1_wr3b "../tv/cdatafile/c.cont.autotvin_buffer_1_wr3b.dat"
#define AUTOTB_TVOUT_buffer_1_wr3b "../tv/cdatafile/c.cont.autotvout_buffer_1_wr3b.dat"
#define AUTOTB_TVIN_compute_start1 "../tv/cdatafile/c.cont.autotvin_compute_start1.dat"
#define AUTOTB_TVOUT_compute_start1 "../tv/cdatafile/c.cont.autotvout_compute_start1.dat"
#define AUTOTB_TVIN_compute_done1 "../tv/cdatafile/c.cont.autotvin_compute_done1.dat"
#define AUTOTB_TVOUT_compute_done1 "../tv/cdatafile/c.cont.autotvout_compute_done1.dat"
#define AUTOTB_TVIN_compute_start2 "../tv/cdatafile/c.cont.autotvin_compute_start2.dat"
#define AUTOTB_TVOUT_compute_start2 "../tv/cdatafile/c.cont.autotvout_compute_start2.dat"
#define AUTOTB_TVIN_compute_done2 "../tv/cdatafile/c.cont.autotvin_compute_done2.dat"
#define AUTOTB_TVOUT_compute_done2 "../tv/cdatafile/c.cont.autotvout_compute_done2.dat"
#define AUTOTB_TVIN_slave_start1 "../tv/cdatafile/c.cont.autotvin_slave_start1.dat"
#define AUTOTB_TVOUT_slave_start1 "../tv/cdatafile/c.cont.autotvout_slave_start1.dat"
#define AUTOTB_TVIN_slave_done1 "../tv/cdatafile/c.cont.autotvin_slave_done1.dat"
#define AUTOTB_TVOUT_slave_done1 "../tv/cdatafile/c.cont.autotvout_slave_done1.dat"
#define AUTOTB_TVIN_slave_start2 "../tv/cdatafile/c.cont.autotvin_slave_start2.dat"
#define AUTOTB_TVOUT_slave_start2 "../tv/cdatafile/c.cont.autotvout_slave_start2.dat"
#define AUTOTB_TVIN_slave_done2 "../tv/cdatafile/c.cont.autotvin_slave_done2.dat"
#define AUTOTB_TVOUT_slave_done2 "../tv/cdatafile/c.cont.autotvout_slave_done2.dat"
#define AUTOTB_TVIN_phase1 "../tv/cdatafile/c.cont.autotvin_phase1.dat"
#define AUTOTB_TVOUT_phase1 "../tv/cdatafile/c.cont.autotvout_phase1.dat"
#define AUTOTB_TVIN_phase2 "../tv/cdatafile/c.cont.autotvin_phase2.dat"
#define AUTOTB_TVOUT_phase2 "../tv/cdatafile/c.cont.autotvout_phase2.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_a_i_ready "../tv/rtldatafile/rtl.cont.autotvout_a_i_ready.dat"
#define AUTOTB_TVOUT_PC_b_i_ready "../tv/rtldatafile/rtl.cont.autotvout_b_i_ready.dat"
#define AUTOTB_TVOUT_PC_c_i_ready "../tv/rtldatafile/rtl.cont.autotvout_c_i_ready.dat"
#define AUTOTB_TVOUT_PC_d_o_valid "../tv/rtldatafile/rtl.cont.autotvout_d_o_valid.dat"
#define AUTOTB_TVOUT_PC_d_o_data "../tv/rtldatafile/rtl.cont.autotvout_d_o_data.dat"
#define AUTOTB_TVOUT_PC_d_o_strb "../tv/rtldatafile/rtl.cont.autotvout_d_o_strb.dat"
#define AUTOTB_TVOUT_PC_f_cnt "../tv/rtldatafile/rtl.cont.autotvout_f_cnt.dat"
#define AUTOTB_TVOUT_PC_f_valid "../tv/rtldatafile/rtl.cont.autotvout_f_valid.dat"
#define AUTOTB_TVOUT_PC_buffer_1_wr "../tv/rtldatafile/rtl.cont.autotvout_buffer_1_wr.dat"
#define AUTOTB_TVOUT_PC_buffer_1_wr1 "../tv/rtldatafile/rtl.cont.autotvout_buffer_1_wr1.dat"
#define AUTOTB_TVOUT_PC_buffer_1_wr2a "../tv/rtldatafile/rtl.cont.autotvout_buffer_1_wr2a.dat"
#define AUTOTB_TVOUT_PC_buffer_1_wr2b "../tv/rtldatafile/rtl.cont.autotvout_buffer_1_wr2b.dat"
#define AUTOTB_TVOUT_PC_buffer_1_wr3a "../tv/rtldatafile/rtl.cont.autotvout_buffer_1_wr3a.dat"
#define AUTOTB_TVOUT_PC_buffer_1_wr3b "../tv/rtldatafile/rtl.cont.autotvout_buffer_1_wr3b.dat"
#define AUTOTB_TVOUT_PC_compute_start1 "../tv/rtldatafile/rtl.cont.autotvout_compute_start1.dat"
#define AUTOTB_TVOUT_PC_compute_start2 "../tv/rtldatafile/rtl.cont.autotvout_compute_start2.dat"
#define AUTOTB_TVOUT_PC_slave_start1 "../tv/rtldatafile/rtl.cont.autotvout_slave_start1.dat"
#define AUTOTB_TVOUT_PC_slave_start2 "../tv/rtldatafile/rtl.cont.autotvout_slave_start2.dat"
#define AUTOTB_TVOUT_PC_phase1 "../tv/rtldatafile/rtl.cont.autotvout_phase1.dat"
#define AUTOTB_TVOUT_PC_phase2 "../tv/rtldatafile/rtl.cont.autotvout_phase2.dat"


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
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void cont_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<1>, hls::sim::Byte<1>, hls::sim::Byte<1>, hls::sim::Byte<1>, hls::sim::Byte<1>*, hls::sim::Byte<2>*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<1>, void*, hls::sim::Byte<1>, void*, hls::sim::Byte<1>, void*, hls::sim::Byte<1>, void*, void*);

extern "C"
void apatb_cont_hw(void* __xlx_apatb_param_a_i_valid, void* __xlx_apatb_param_a_i_ready, void* __xlx_apatb_param_a_i_data, void* __xlx_apatb_param_a_i_strb, void* __xlx_apatb_param_b_i_valid, void* __xlx_apatb_param_b_i_ready, void* __xlx_apatb_param_b_i_data, void* __xlx_apatb_param_b_i_strb, void* __xlx_apatb_param_c_i_valid, void* __xlx_apatb_param_c_i_ready, void* __xlx_apatb_param_c_i_data, void* __xlx_apatb_param_c_i_strb, void* __xlx_apatb_param_d_o_valid, void* __xlx_apatb_param_d_o_ready, void* __xlx_apatb_param_d_o_data, void* __xlx_apatb_param_d_o_strb, hls::sim::Byte<1> __xlx_apatb_param_clear, hls::sim::Byte<1> __xlx_apatb_param_enable, hls::sim::Byte<1> __xlx_apatb_param_function_r, hls::sim::Byte<1> __xlx_apatb_param_start_r, hls::sim::Byte<1>* __xlx_apatb_param_shift, hls::sim::Byte<2>* __xlx_apatb_param_len, void* __xlx_apatb_param_f_cnt, void* __xlx_apatb_param_f_valid, void* __xlx_apatb_param_buffer_1_rd, void* __xlx_apatb_param_buffer_1_rd1, void* __xlx_apatb_param_buffer_1_rd2, void* __xlx_apatb_param_buffer_1_rd3, void* __xlx_apatb_param_buffer_1_wr, void* __xlx_apatb_param_buffer_1_wr1, void* __xlx_apatb_param_buffer_1_wr2a, void* __xlx_apatb_param_buffer_1_wr2b, void* __xlx_apatb_param_buffer_1_wr3a, void* __xlx_apatb_param_buffer_1_wr3b, void* __xlx_apatb_param_compute_start1, hls::sim::Byte<1> __xlx_apatb_param_compute_done1, void* __xlx_apatb_param_compute_start2, hls::sim::Byte<1> __xlx_apatb_param_compute_done2, void* __xlx_apatb_param_slave_start1, hls::sim::Byte<1> __xlx_apatb_param_slave_done1, void* __xlx_apatb_param_slave_start2, hls::sim::Byte<1> __xlx_apatb_param_slave_done2, void* __xlx_apatb_param_phase1, void* __xlx_apatb_param_phase2)
{
  static hls::sim::Register port0 {
    .name = "a_i_valid",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_i_valid),
#endif
  };
  port0.param = __xlx_apatb_param_a_i_valid;

  static hls::sim::Register port1 {
    .name = "a_i_ready",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_a_i_ready),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_a_i_ready),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_i_ready),
#endif
  };
  port1.param = __xlx_apatb_param_a_i_ready;

  static hls::sim::Register port2 {
    .name = "a_i_data",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_i_data),
#endif
  };
  port2.param = __xlx_apatb_param_a_i_data;

  static hls::sim::Register port3 {
    .name = "a_i_strb",
    .width = 4,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_a_i_strb),
#endif
  };
  port3.param = __xlx_apatb_param_a_i_strb;

  static hls::sim::Register port4 {
    .name = "b_i_valid",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_i_valid),
#endif
  };
  port4.param = __xlx_apatb_param_b_i_valid;

  static hls::sim::Register port5 {
    .name = "b_i_ready",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_b_i_ready),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_b_i_ready),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_i_ready),
#endif
  };
  port5.param = __xlx_apatb_param_b_i_ready;

  static hls::sim::Register port6 {
    .name = "b_i_data",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_i_data),
#endif
  };
  port6.param = __xlx_apatb_param_b_i_data;

  static hls::sim::Register port7 {
    .name = "b_i_strb",
    .width = 4,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_b_i_strb),
#endif
  };
  port7.param = __xlx_apatb_param_b_i_strb;

  static hls::sim::Register port8 {
    .name = "c_i_valid",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_i_valid),
#endif
  };
  port8.param = __xlx_apatb_param_c_i_valid;

  static hls::sim::Register port9 {
    .name = "c_i_ready",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_c_i_ready),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_c_i_ready),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_i_ready),
#endif
  };
  port9.param = __xlx_apatb_param_c_i_ready;

  static hls::sim::Register port10 {
    .name = "c_i_data",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_i_data),
#endif
  };
  port10.param = __xlx_apatb_param_c_i_data;

  static hls::sim::Register port11 {
    .name = "c_i_strb",
    .width = 4,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_i_strb),
#endif
  };
  port11.param = __xlx_apatb_param_c_i_strb;

  static hls::sim::Register port12 {
    .name = "d_o_valid",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_d_o_valid),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_d_o_valid),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_d_o_valid),
#endif
  };
  port12.param = __xlx_apatb_param_d_o_valid;

  static hls::sim::Register port13 {
    .name = "d_o_ready",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_d_o_ready),
#endif
  };
  port13.param = __xlx_apatb_param_d_o_ready;

  static hls::sim::Register port14 {
    .name = "d_o_data",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_d_o_data),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_d_o_data),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_d_o_data),
#endif
  };
  port14.param = __xlx_apatb_param_d_o_data;

  static hls::sim::Register port15 {
    .name = "d_o_strb",
    .width = 4,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_d_o_strb),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_d_o_strb),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_d_o_strb),
#endif
  };
  port15.param = __xlx_apatb_param_d_o_strb;

  static hls::sim::Register port16 {
    .name = "clear",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_clear),
#endif
  };
  port16.param = &__xlx_apatb_param_clear;

  static hls::sim::Register port17 {
    .name = "enable",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_enable),
#endif
  };
  port17.param = &__xlx_apatb_param_enable;

  static hls::sim::Register port18 {
    .name = "function_r",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_function_r),
#endif
  };
  port18.param = &__xlx_apatb_param_function_r;

  static hls::sim::Register port19 {
    .name = "start_r",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_start_r),
#endif
  };
  port19.param = &__xlx_apatb_param_start_r;

  static hls::sim::Register port20 {
    .name = "shift",
    .width = 5,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_shift),
#endif
  };
  port20.param = __xlx_apatb_param_shift;

  static hls::sim::Register port21 {
    .name = "len",
    .width = 11,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_len),
#endif
  };
  port21.param = __xlx_apatb_param_len;

  static hls::sim::Register port22 {
    .name = "f_cnt",
    .width = 11,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_f_cnt),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_f_cnt),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_f_cnt),
#endif
  };
  port22.param = __xlx_apatb_param_f_cnt;

  static hls::sim::Register port23 {
    .name = "f_valid",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_f_valid),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_f_valid),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_f_valid),
#endif
  };
  port23.param = __xlx_apatb_param_f_valid;

  static hls::sim::Stream<hls::sim::Byte<4>> port24 {
    .width = 32,
    .name = "buffer_1_rd",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_buffer_1_rd),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_rd),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_buffer_1_rd),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd),
#endif
  };
  port24.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_buffer_1_rd;
  port24.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port25 {
    .width = 32,
    .name = "buffer_1_rd1",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_buffer_1_rd1),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_rd1),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_buffer_1_rd1),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd1),
#endif
  };
  port25.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_buffer_1_rd1;
  port25.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port26 {
    .width = 32,
    .name = "buffer_1_rd2",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_buffer_1_rd2),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_rd2),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_buffer_1_rd2),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd2),
#endif
  };
  port26.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_buffer_1_rd2;
  port26.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<4>> port27 {
    .width = 32,
    .name = "buffer_1_rd3",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_buffer_1_rd3),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_rd3),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_buffer_1_rd3),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_buffer_1_rd3),
#endif
  };
  port27.param = (hls::stream<hls::sim::Byte<4>>*)__xlx_apatb_param_buffer_1_rd3;
  port27.hasWrite = false;

  static hls::sim::Register port28 {
    .name = "compute_start1",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_compute_start1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_compute_start1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_compute_start1),
#endif
  };
  port28.param = __xlx_apatb_param_compute_start1;

  static hls::sim::Register port29 {
    .name = "compute_done1",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_compute_done1),
#endif
  };
  port29.param = &__xlx_apatb_param_compute_done1;

  static hls::sim::Register port30 {
    .name = "compute_start2",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_compute_start2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_compute_start2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_compute_start2),
#endif
  };
  port30.param = __xlx_apatb_param_compute_start2;

  static hls::sim::Register port31 {
    .name = "compute_done2",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_compute_done2),
#endif
  };
  port31.param = &__xlx_apatb_param_compute_done2;

  static hls::sim::Register port32 {
    .name = "slave_start1",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_slave_start1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_slave_start1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_slave_start1),
#endif
  };
  port32.param = __xlx_apatb_param_slave_start1;

  static hls::sim::Register port33 {
    .name = "slave_done1",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_slave_done1),
#endif
  };
  port33.param = &__xlx_apatb_param_slave_done1;

  static hls::sim::Register port34 {
    .name = "slave_start2",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_slave_start2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_slave_start2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_slave_start2),
#endif
  };
  port34.param = __xlx_apatb_param_slave_start2;

  static hls::sim::Register port35 {
    .name = "slave_done2",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_slave_done2),
#endif
  };
  port35.param = &__xlx_apatb_param_slave_done2;

  static hls::sim::Register port36 {
    .name = "phase1",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_phase1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_phase1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_phase1),
#endif
  };
  port36.param = __xlx_apatb_param_phase1;

  static hls::sim::Register port37 {
    .name = "phase2",
    .width = 1,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_phase2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_phase2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_phase2),
#endif
  };
  port37.param = __xlx_apatb_param_phase2;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port38 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port38 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "buffer_1_wr" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_buffer_1_wr),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_buffer_1_wr),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_buffer_1_wr),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_buffer_1_wr),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_buffer_1_wr),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_wr),
#endif
#endif
  };
  port38.param = { __xlx_apatb_param_buffer_1_wr };
  port38.depth = { 20 };
  port38.offset = {  };
  port38.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port39 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port39 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "buffer_1_wr1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_buffer_1_wr1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_buffer_1_wr1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_buffer_1_wr1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_buffer_1_wr1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_buffer_1_wr1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_wr1),
#endif
#endif
  };
  port39.param = { __xlx_apatb_param_buffer_1_wr1 };
  port39.depth = { 20 };
  port39.offset = {  };
  port39.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port40 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port40 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "buffer_1_wr2a" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_buffer_1_wr2a),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_buffer_1_wr2a),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_buffer_1_wr2a),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_buffer_1_wr2a),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_buffer_1_wr2a),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_wr2a),
#endif
#endif
  };
  port40.param = { __xlx_apatb_param_buffer_1_wr2a };
  port40.depth = { 20 };
  port40.offset = {  };
  port40.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port41 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port41 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "buffer_1_wr2b" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_buffer_1_wr2b),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_buffer_1_wr2b),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_buffer_1_wr2b),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_buffer_1_wr2b),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_buffer_1_wr2b),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_wr2b),
#endif
#endif
  };
  port41.param = { __xlx_apatb_param_buffer_1_wr2b };
  port41.depth = { 20 };
  port41.offset = {  };
  port41.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port42 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port42 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "buffer_1_wr3a" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_buffer_1_wr3a),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_buffer_1_wr3a),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_buffer_1_wr3a),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_buffer_1_wr3a),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_buffer_1_wr3a),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_wr3a),
#endif
#endif
  };
  port42.param = { __xlx_apatb_param_buffer_1_wr3a };
  port42.depth = { 20 };
  port42.offset = {  };
  port42.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port43 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port43 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "buffer_1_wr3b" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_buffer_1_wr3b),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_buffer_1_wr3b),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_buffer_1_wr3b),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_buffer_1_wr3b),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_buffer_1_wr3b),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_buffer_1_wr3b),
#endif
#endif
  };
  port43.param = { __xlx_apatb_param_buffer_1_wr3b };
  port43.depth = { 20 };
  port43.offset = {  };
  port43.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port1);
    check(port5);
    check(port9);
    check(port12);
    check(port14);
    check(port15);
    check(port22);
    check(port23);
    check(port28);
    check(port30);
    check(port32);
    check(port34);
    check(port36);
    check(port37);
    check(port38);
    check(port39);
    check(port40);
    check(port41);
    check(port42);
    check(port43);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port24.markSize();
    port25.markSize();
    port26.markSize();
    port27.markSize();
    port24.buffer();
    port25.buffer();
    port26.buffer();
    port27.buffer();
    CodeState = CALL_C_DUT;
    cont_hw_stub_wrapper(__xlx_apatb_param_a_i_valid, __xlx_apatb_param_a_i_ready, __xlx_apatb_param_a_i_data, __xlx_apatb_param_a_i_strb, __xlx_apatb_param_b_i_valid, __xlx_apatb_param_b_i_ready, __xlx_apatb_param_b_i_data, __xlx_apatb_param_b_i_strb, __xlx_apatb_param_c_i_valid, __xlx_apatb_param_c_i_ready, __xlx_apatb_param_c_i_data, __xlx_apatb_param_c_i_strb, __xlx_apatb_param_d_o_valid, __xlx_apatb_param_d_o_ready, __xlx_apatb_param_d_o_data, __xlx_apatb_param_d_o_strb, __xlx_apatb_param_clear, __xlx_apatb_param_enable, __xlx_apatb_param_function_r, __xlx_apatb_param_start_r, __xlx_apatb_param_shift, __xlx_apatb_param_len, __xlx_apatb_param_f_cnt, __xlx_apatb_param_f_valid, __xlx_apatb_param_buffer_1_rd, __xlx_apatb_param_buffer_1_rd1, __xlx_apatb_param_buffer_1_rd2, __xlx_apatb_param_buffer_1_rd3, __xlx_apatb_param_buffer_1_wr, __xlx_apatb_param_buffer_1_wr1, __xlx_apatb_param_buffer_1_wr2a, __xlx_apatb_param_buffer_1_wr2b, __xlx_apatb_param_buffer_1_wr3a, __xlx_apatb_param_buffer_1_wr3b, __xlx_apatb_param_compute_start1, __xlx_apatb_param_compute_done1, __xlx_apatb_param_compute_start2, __xlx_apatb_param_compute_done2, __xlx_apatb_param_slave_start1, __xlx_apatb_param_slave_done1, __xlx_apatb_param_slave_start2, __xlx_apatb_param_slave_done2, __xlx_apatb_param_phase1, __xlx_apatb_param_phase2);
    dump(port24, tcl.AESL_transaction);
    dump(port25, tcl.AESL_transaction);
    dump(port26, tcl.AESL_transaction);
    dump(port27, tcl.AESL_transaction);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    CodeState = DUMP_OUTPUTS;
    dump(port1, port1.owriter, tcl.AESL_transaction);
    dump(port5, port5.owriter, tcl.AESL_transaction);
    dump(port9, port9.owriter, tcl.AESL_transaction);
    dump(port12, port12.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    dump(port15, port15.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    dump(port30, port30.owriter, tcl.AESL_transaction);
    dump(port32, port32.owriter, tcl.AESL_transaction);
    dump(port34, port34.owriter, tcl.AESL_transaction);
    dump(port36, port36.owriter, tcl.AESL_transaction);
    dump(port37, port37.owriter, tcl.AESL_transaction);
    dump(port38, port38.owriter, tcl.AESL_transaction);
    dump(port39, port39.owriter, tcl.AESL_transaction);
    dump(port40, port40.owriter, tcl.AESL_transaction);
    dump(port41, port41.owriter, tcl.AESL_transaction);
    dump(port42, port42.owriter, tcl.AESL_transaction);
    dump(port43, port43.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}