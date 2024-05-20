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

// AdminPatchUpdateLogConfigReader is a Reader for the AdminPatchUpdateLogConfig structure.
type AdminPatchUpdateLogConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPatchUpdateLogConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPatchUpdateLogConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPatchUpdateLogConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPatchUpdateLogConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /session/v1/admin/config/log returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPatchUpdateLogConfigOK creates a AdminPatchUpdateLogConfigOK with default headers values
func NewAdminPatchUpdateLogConfigOK() *AdminPatchUpdateLogConfigOK {
	return &AdminPatchUpdateLogConfigOK{}
}

/*AdminPatchUpdateLogConfigOK handles this case with default header values.

  OK
*/
type AdminPatchUpdateLogConfigOK struct {
	Payload *sessionclientmodels.LogconfigConfiguration
}

func (o *AdminPatchUpdateLogConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/admin/config/log][%d] adminPatchUpdateLogConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminPatchUpdateLogConfigOK) ToJSONString() string {
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

func (o *AdminPatchUpdateLogConfigOK) GetPayload() *sessionclientmodels.LogconfigConfiguration {
	return o.Payload
}

func (o *AdminPatchUpdateLogConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPatchUpdateLogConfigUnauthorized creates a AdminPatchUpdateLogConfigUnauthorized with default headers values
func NewAdminPatchUpdateLogConfigUnauthorized() *AdminPatchUpdateLogConfigUnauthorized {
	return &AdminPatchUpdateLogConfigUnauthorized{}
}

/*AdminPatchUpdateLogConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminPatchUpdateLogConfigUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminPatchUpdateLogConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/admin/config/log][%d] adminPatchUpdateLogConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPatchUpdateLogConfigUnauthorized) ToJSONString() string {
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

func (o *AdminPatchUpdateLogConfigUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchUpdateLogConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPatchUpdateLogConfigForbidden creates a AdminPatchUpdateLogConfigForbidden with default headers values
func NewAdminPatchUpdateLogConfigForbidden() *AdminPatchUpdateLogConfigForbidden {
	return &AdminPatchUpdateLogConfigForbidden{}
}

/*AdminPatchUpdateLogConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminPatchUpdateLogConfigForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminPatchUpdateLogConfigForbidden) Error() string {
	return fmt.Sprintf("[PATCH /session/v1/admin/config/log][%d] adminPatchUpdateLogConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPatchUpdateLogConfigForbidden) ToJSONString() string {
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

func (o *AdminPatchUpdateLogConfigForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchUpdateLogConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
