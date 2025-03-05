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

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// AdminGetEnvConfigReader is a Reader for the AdminGetEnvConfig structure.
type AdminGetEnvConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetEnvConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetEnvConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetEnvConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetEnvConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/config/env returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetEnvConfigOK creates a AdminGetEnvConfigOK with default headers values
func NewAdminGetEnvConfigOK() *AdminGetEnvConfigOK {
	return &AdminGetEnvConfigOK{}
}

/*AdminGetEnvConfigOK handles this case with default header values.

  OK
*/
type AdminGetEnvConfigOK struct {
	Payload *sessionhistoryclientmodels.EnvconfigConfiguration
}

func (o *AdminGetEnvConfigOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/config/env][%d] adminGetEnvConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetEnvConfigOK) ToJSONString() string {
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

func (o *AdminGetEnvConfigOK) GetPayload() *sessionhistoryclientmodels.EnvconfigConfiguration {
	return o.Payload
}

func (o *AdminGetEnvConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.EnvconfigConfiguration)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetEnvConfigUnauthorized creates a AdminGetEnvConfigUnauthorized with default headers values
func NewAdminGetEnvConfigUnauthorized() *AdminGetEnvConfigUnauthorized {
	return &AdminGetEnvConfigUnauthorized{}
}

/*AdminGetEnvConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetEnvConfigUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetEnvConfigUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/config/env][%d] adminGetEnvConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetEnvConfigUnauthorized) ToJSONString() string {
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

func (o *AdminGetEnvConfigUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetEnvConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetEnvConfigForbidden creates a AdminGetEnvConfigForbidden with default headers values
func NewAdminGetEnvConfigForbidden() *AdminGetEnvConfigForbidden {
	return &AdminGetEnvConfigForbidden{}
}

/*AdminGetEnvConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetEnvConfigForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetEnvConfigForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/config/env][%d] adminGetEnvConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetEnvConfigForbidden) ToJSONString() string {
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

func (o *AdminGetEnvConfigForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetEnvConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
