// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetLogConfigReader is a Reader for the AdminGetLogConfig structure.
type AdminGetLogConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetLogConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetLogConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetLogConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetLogConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/config/log returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetLogConfigOK creates a AdminGetLogConfigOK with default headers values
func NewAdminGetLogConfigOK() *AdminGetLogConfigOK {
	return &AdminGetLogConfigOK{}
}

/*AdminGetLogConfigOK handles this case with default header values.

  OK
*/
type AdminGetLogConfigOK struct {
	Payload *sessionclientmodels.LogconfigConfiguration
}

func (o *AdminGetLogConfigOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/config/log][%d] adminGetLogConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetLogConfigOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetLogConfigOK) GetPayload() *sessionclientmodels.LogconfigConfiguration {
	return o.Payload
}

func (o *AdminGetLogConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.LogconfigConfiguration)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLogConfigUnauthorized creates a AdminGetLogConfigUnauthorized with default headers values
func NewAdminGetLogConfigUnauthorized() *AdminGetLogConfigUnauthorized {
	return &AdminGetLogConfigUnauthorized{}
}

/*AdminGetLogConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetLogConfigUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetLogConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/config/log][%d] adminGetLogConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetLogConfigUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetLogConfigUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetLogConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLogConfigForbidden creates a AdminGetLogConfigForbidden with default headers values
func NewAdminGetLogConfigForbidden() *AdminGetLogConfigForbidden {
	return &AdminGetLogConfigForbidden{}
}

/*AdminGetLogConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetLogConfigForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetLogConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/config/log][%d] adminGetLogConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetLogConfigForbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetLogConfigForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetLogConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
