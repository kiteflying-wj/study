// Auto-generated. Do not edit!

// (in-package practice.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class send {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message1 = null;
      this.message2 = null;
    }
    else {
      if (initObj.hasOwnProperty('message1')) {
        this.message1 = initObj.message1
      }
      else {
        this.message1 = '';
      }
      if (initObj.hasOwnProperty('message2')) {
        this.message2 = initObj.message2
      }
      else {
        this.message2 = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type send
    // Serialize message field [message1]
    bufferOffset = _serializer.string(obj.message1, buffer, bufferOffset);
    // Serialize message field [message2]
    bufferOffset = _serializer.string(obj.message2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type send
    let len;
    let data = new send(null);
    // Deserialize message field [message1]
    data.message1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [message2]
    data.message2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message1.length;
    length += object.message2.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'practice/send';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eba6f8f31d161a30d781af191db38e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message1
    string message2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new send(null);
    if (msg.message1 !== undefined) {
      resolved.message1 = msg.message1;
    }
    else {
      resolved.message1 = ''
    }

    if (msg.message2 !== undefined) {
      resolved.message2 = msg.message2;
    }
    else {
      resolved.message2 = ''
    }

    return resolved;
    }
};

module.exports = send;
