#pragma once

#include <cstdio>
#include <string>
#include <cstring>
#include <vector>
#include <map>

#include <Arduino.h>
#include <Ticker.h>
#include <freertos/FreeRTOS.h>
#include <freertos/task.h>

#include "IthoPacket.h"
#include "IthoRemote.h"
#include "SystemConfig.h"
#include "sys_log.h"
#include "notifyClients.h"
#include "i2c_esp32.h"
#include "task_mqtt.h"
#include "IthoQueue.h"
#include "enum.h"
#include "task_syscontrol.h"

// globals
extern volatile uint16_t ithoCurrentVal;
extern const struct ihtoDeviceType *ithoDeviceptr;

// extern bool get2410;
// extern bool set2410;
// extern uint8_t index2410;
// extern int32_t value2410;
extern int32_t *resultPtr2410;
extern bool i2c_result_updateweb;

extern bool itho_internal_hum_temp;
extern double ithoHum;
extern double ithoTemp;

struct ithoDeviceStatus
{
  const char *name;
  enum : uint8_t
  {
    is_byte,
    is_int,
    is_float,
    is_string
  } type;
  uint8_t length;
  union
  {
    byte byteval;
    int32_t intval;
    uint32_t uintval;
    double floatval;
    const char *stringval;
  } value;
  uint32_t divider;
  uint8_t updated;
  bool is_signed;
  ithoDeviceStatus() : updated(0){};
};

struct ithoDeviceMeasurements
{
  const char *name;
  enum : uint8_t
  {
    is_int,
    is_float,
    is_string
  } type;
  union
  {
    int32_t intval;
    double floatval;
    const char *stringval;
  } value;
  uint8_t updated;
};

extern std::vector<ithoDeviceStatus> ithoStatus;
extern std::vector<ithoDeviceMeasurements> ithoMeasurements;
extern std::vector<ithoDeviceMeasurements> ithoInternalMeasurements;

struct lastCommand
{
  char source[30];
  char command[20];
  time_t timestamp;
};

extern struct lastCommand lastCmd;

extern const std::map<cmdOrigin, const char *> cmdOriginMap;

struct ithoSettings
{
  enum : uint8_t
  {
    is_int8,
    is_int16,
    is_int32,
    is_uint8,
    is_uint16,
    is_uint32,
    is_float2,
    is_float10,
    is_float100,
    is_float1000,
    is_unknown
  } type{is_unknown};
  int32_t value{0};
  uint8_t length{0};
};

extern ithoSettings *ithoSettingsArray;

const char *getIthoType();
int currentIthoDeviceGroup();
int currentIthoDeviceID();
uint8_t currentItho_fwversion();
uint16_t currentIthoSettingsLength();
int16_t currentIthoStatusLabelLength();
int getSettingsLength(const uint8_t deviceGroup, const uint8_t deviceID, const uint8_t version);
void getSetting(const uint8_t i, const bool updateState, const bool updateweb, const bool loop = false);
void processSettingResult(const uint8_t index, const bool loop);
int getStatusLabelLength(const uint8_t deviceGroup, const uint8_t deviceID, const uint8_t version);
const char *getSatusLabel(const uint8_t i, const struct ihtoDeviceType *statusPtr, const uint8_t version);
void updateSetting(const uint8_t i, const int32_t value, bool webupdate);
const struct ihtoDeviceType *getDevicePtr(const uint8_t deviceGroup, const uint8_t deviceID);

uint8_t checksum(const uint8_t *buf, size_t buflen);
void sendI2CPWMinit();
void sendRemoteCmd(const uint8_t remoteIndex, const IthoCommand command);
void sendQueryDevicetype(bool updateweb);
void sendQueryStatusFormat(bool updateweb);
void sendQueryStatus(bool updateweb);
void sendQuery31DA(bool updateweb);
void sendQuery31D9(bool updateweb);
void setSettingCE30(int16_t temperature1, int16_t temperature2, uint32_t timestamp, bool updateweb);
int32_t *sendQuery2410(uint8_t index, bool updateweb);
void setSetting2410(uint8_t index, int32_t value, bool updateweb);
// void setSetting2410(bool updateweb);
void filterReset();
void IthoPWMcommand(uint16_t value, volatile uint16_t *ithoCurrentVal, bool *updateIthoMQTT);
int quick_pow10(int n);
std::string i2cbuf2string(const uint8_t *data, size_t len);
bool check_i2c_reply(const uint8_t *buf, size_t buflen, const uint16_t opcode);
int cast_to_signed_int(int val, int length);
uint32_t get_divider_from_datatype(int8_t datatype);
uint8_t get_length_from_datatype(int8_t datatype);
bool get_signed_from_datatype(int8_t datatype);
