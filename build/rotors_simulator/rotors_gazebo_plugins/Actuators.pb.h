// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Actuators.proto

#ifndef PROTOBUF_Actuators_2eproto__INCLUDED
#define PROTOBUF_Actuators_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 3000000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 3000000 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/arena.h>
#include <google/protobuf/arenastring.h>
#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/metadata.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
#include "Header.pb.h"
// @@protoc_insertion_point(includes)

namespace gz_sensor_msgs {

// Internal implementation detail -- do not call these.
void protobuf_AddDesc_Actuators_2eproto();
void protobuf_AssignDesc_Actuators_2eproto();
void protobuf_ShutdownFile_Actuators_2eproto();

class Actuators;

// ===================================================================

class Actuators : public ::google::protobuf::Message /* @@protoc_insertion_point(class_definition:gz_sensor_msgs.Actuators) */ {
 public:
  Actuators();
  virtual ~Actuators();

  Actuators(const Actuators& from);

  inline Actuators& operator=(const Actuators& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _internal_metadata_.unknown_fields();
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return _internal_metadata_.mutable_unknown_fields();
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Actuators& default_instance();

  void Swap(Actuators* other);

  // implements Message ----------------------------------------------

  inline Actuators* New() const { return New(NULL); }

  Actuators* New(::google::protobuf::Arena* arena) const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Actuators& from);
  void MergeFrom(const Actuators& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* InternalSerializeWithCachedSizesToArray(
      bool deterministic, ::google::protobuf::uint8* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const {
    return InternalSerializeWithCachedSizesToArray(false, output);
  }
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  void InternalSwap(Actuators* other);
  private:
  inline ::google::protobuf::Arena* GetArenaNoVirtual() const {
    return _internal_metadata_.arena();
  }
  inline void* MaybeArenaPtr() const {
    return _internal_metadata_.raw_arena_ptr();
  }
  public:

  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required .gz_std_msgs.Header header = 1;
  bool has_header() const;
  void clear_header();
  static const int kHeaderFieldNumber = 1;
  const ::gz_std_msgs::Header& header() const;
  ::gz_std_msgs::Header* mutable_header();
  ::gz_std_msgs::Header* release_header();
  void set_allocated_header(::gz_std_msgs::Header* header);

  // repeated double angles = 2 [packed = true];
  int angles_size() const;
  void clear_angles();
  static const int kAnglesFieldNumber = 2;
  double angles(int index) const;
  void set_angles(int index, double value);
  void add_angles(double value);
  const ::google::protobuf::RepeatedField< double >&
      angles() const;
  ::google::protobuf::RepeatedField< double >*
      mutable_angles();

  // repeated double angular_velocities = 3 [packed = true];
  int angular_velocities_size() const;
  void clear_angular_velocities();
  static const int kAngularVelocitiesFieldNumber = 3;
  double angular_velocities(int index) const;
  void set_angular_velocities(int index, double value);
  void add_angular_velocities(double value);
  const ::google::protobuf::RepeatedField< double >&
      angular_velocities() const;
  ::google::protobuf::RepeatedField< double >*
      mutable_angular_velocities();

  // repeated double normalized = 4 [packed = true];
  int normalized_size() const;
  void clear_normalized();
  static const int kNormalizedFieldNumber = 4;
  double normalized(int index) const;
  void set_normalized(int index, double value);
  void add_normalized(double value);
  const ::google::protobuf::RepeatedField< double >&
      normalized() const;
  ::google::protobuf::RepeatedField< double >*
      mutable_normalized();

  // @@protoc_insertion_point(class_scope:gz_sensor_msgs.Actuators)
 private:
  inline void set_has_header();
  inline void clear_has_header();

  ::google::protobuf::internal::InternalMetadataWithArena _internal_metadata_;
  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::gz_std_msgs::Header* header_;
  ::google::protobuf::RepeatedField< double > angles_;
  mutable int _angles_cached_byte_size_;
  ::google::protobuf::RepeatedField< double > angular_velocities_;
  mutable int _angular_velocities_cached_byte_size_;
  ::google::protobuf::RepeatedField< double > normalized_;
  mutable int _normalized_cached_byte_size_;
  friend void  protobuf_AddDesc_Actuators_2eproto();
  friend void protobuf_AssignDesc_Actuators_2eproto();
  friend void protobuf_ShutdownFile_Actuators_2eproto();

  void InitAsDefaultInstance();
  static Actuators* default_instance_;
};
// ===================================================================


// ===================================================================

#if !PROTOBUF_INLINE_NOT_IN_HEADERS
// Actuators

// required .gz_std_msgs.Header header = 1;
inline bool Actuators::has_header() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Actuators::set_has_header() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Actuators::clear_has_header() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Actuators::clear_header() {
  if (header_ != NULL) header_->::gz_std_msgs::Header::Clear();
  clear_has_header();
}
inline const ::gz_std_msgs::Header& Actuators::header() const {
  // @@protoc_insertion_point(field_get:gz_sensor_msgs.Actuators.header)
  return header_ != NULL ? *header_ : *default_instance_->header_;
}
inline ::gz_std_msgs::Header* Actuators::mutable_header() {
  set_has_header();
  if (header_ == NULL) {
    header_ = new ::gz_std_msgs::Header;
  }
  // @@protoc_insertion_point(field_mutable:gz_sensor_msgs.Actuators.header)
  return header_;
}
inline ::gz_std_msgs::Header* Actuators::release_header() {
  // @@protoc_insertion_point(field_release:gz_sensor_msgs.Actuators.header)
  clear_has_header();
  ::gz_std_msgs::Header* temp = header_;
  header_ = NULL;
  return temp;
}
inline void Actuators::set_allocated_header(::gz_std_msgs::Header* header) {
  delete header_;
  header_ = header;
  if (header) {
    set_has_header();
  } else {
    clear_has_header();
  }
  // @@protoc_insertion_point(field_set_allocated:gz_sensor_msgs.Actuators.header)
}

// repeated double angles = 2 [packed = true];
inline int Actuators::angles_size() const {
  return angles_.size();
}
inline void Actuators::clear_angles() {
  angles_.Clear();
}
inline double Actuators::angles(int index) const {
  // @@protoc_insertion_point(field_get:gz_sensor_msgs.Actuators.angles)
  return angles_.Get(index);
}
inline void Actuators::set_angles(int index, double value) {
  angles_.Set(index, value);
  // @@protoc_insertion_point(field_set:gz_sensor_msgs.Actuators.angles)
}
inline void Actuators::add_angles(double value) {
  angles_.Add(value);
  // @@protoc_insertion_point(field_add:gz_sensor_msgs.Actuators.angles)
}
inline const ::google::protobuf::RepeatedField< double >&
Actuators::angles() const {
  // @@protoc_insertion_point(field_list:gz_sensor_msgs.Actuators.angles)
  return angles_;
}
inline ::google::protobuf::RepeatedField< double >*
Actuators::mutable_angles() {
  // @@protoc_insertion_point(field_mutable_list:gz_sensor_msgs.Actuators.angles)
  return &angles_;
}

// repeated double angular_velocities = 3 [packed = true];
inline int Actuators::angular_velocities_size() const {
  return angular_velocities_.size();
}
inline void Actuators::clear_angular_velocities() {
  angular_velocities_.Clear();
}
inline double Actuators::angular_velocities(int index) const {
  // @@protoc_insertion_point(field_get:gz_sensor_msgs.Actuators.angular_velocities)
  return angular_velocities_.Get(index);
}
inline void Actuators::set_angular_velocities(int index, double value) {
  angular_velocities_.Set(index, value);
  // @@protoc_insertion_point(field_set:gz_sensor_msgs.Actuators.angular_velocities)
}
inline void Actuators::add_angular_velocities(double value) {
  angular_velocities_.Add(value);
  // @@protoc_insertion_point(field_add:gz_sensor_msgs.Actuators.angular_velocities)
}
inline const ::google::protobuf::RepeatedField< double >&
Actuators::angular_velocities() const {
  // @@protoc_insertion_point(field_list:gz_sensor_msgs.Actuators.angular_velocities)
  return angular_velocities_;
}
inline ::google::protobuf::RepeatedField< double >*
Actuators::mutable_angular_velocities() {
  // @@protoc_insertion_point(field_mutable_list:gz_sensor_msgs.Actuators.angular_velocities)
  return &angular_velocities_;
}

// repeated double normalized = 4 [packed = true];
inline int Actuators::normalized_size() const {
  return normalized_.size();
}
inline void Actuators::clear_normalized() {
  normalized_.Clear();
}
inline double Actuators::normalized(int index) const {
  // @@protoc_insertion_point(field_get:gz_sensor_msgs.Actuators.normalized)
  return normalized_.Get(index);
}
inline void Actuators::set_normalized(int index, double value) {
  normalized_.Set(index, value);
  // @@protoc_insertion_point(field_set:gz_sensor_msgs.Actuators.normalized)
}
inline void Actuators::add_normalized(double value) {
  normalized_.Add(value);
  // @@protoc_insertion_point(field_add:gz_sensor_msgs.Actuators.normalized)
}
inline const ::google::protobuf::RepeatedField< double >&
Actuators::normalized() const {
  // @@protoc_insertion_point(field_list:gz_sensor_msgs.Actuators.normalized)
  return normalized_;
}
inline ::google::protobuf::RepeatedField< double >*
Actuators::mutable_normalized() {
  // @@protoc_insertion_point(field_mutable_list:gz_sensor_msgs.Actuators.normalized)
  return &normalized_;
}

#endif  // !PROTOBUF_INLINE_NOT_IN_HEADERS

// @@protoc_insertion_point(namespace_scope)

}  // namespace gz_sensor_msgs

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_Actuators_2eproto__INCLUDED
