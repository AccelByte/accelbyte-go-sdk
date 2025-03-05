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

// AdminPatchUpdateEnvConfigReader is a Reader for the AdminPatchUpdateEnvConfig structure.
type AdminPatchUpdateEnvConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPatchUpdateEnvConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPatchUpdateEnvConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPatchUpdateEnvConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPatchUpdateEnvConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /sessionhistory/v1/admin/config/env returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPatchUpdateEnvConfigOK creates a AdminPatchUpdateEnvConfigOK with default headers values
func NewAdminPatchUpdateEnvConfigOK() *AdminPatchUpdateEnvConfigOK {
	return &AdminPatchUpdateEnvConfigOK{}
}

/*AdminPatchUpdateEnvConfigOK handles this case with default header values.

  OK
*/
type AdminPatchUpdateEnvConfigOK struct {
	Payload *sessionhistoryclientmodels.EnvconfigConfiguration
}

func (o *AdminPatchUpdateEnvConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /sessionhistory/v1/admin/config/env][%d] adminPatchUpdateEnvConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminPatchUpdateEnvConfigOK) ToJSONString() string {
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

func (o *AdminPatchUpdateEnvConfigOK) GetPayload() *sessionhistoryclientmodels.EnvconfigConfiguration {
	return o.Payload
}

func (o *AdminPatchUpdateEnvConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPatchUpdateEnvConfigUnauthorized creates a AdminPatchUpdateEnvConfigUnauthorized with default headers values
func NewAdminPatchUpdateEnvConfigUnauthorized() *AdminPatchUpdateEnvConfigUnauthorized {
	return &AdminPatchUpdateEnvConfigUnauthorized{}
}

/*AdminPatchUpdateEnvConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminPatchUpdateEnvConfigUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminPatchUpdateEnvConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /sessionhistory/v1/admin/config/env][%d] adminPatchUpdateEnvConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPatchUpdateEnvConfigUnauthorized) ToJSONString() string {
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

func (o *AdminPatchUpdateEnvConfigUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchUpdateEnvConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPatchUpdateEnvConfigForbidden creates a AdminPatchUpdateEnvConfigForbidden with default headers values
func NewAdminPatchUpdateEnvConfigForbidden() *AdminPatchUpdateEnvConfigForbidden {
	return &AdminPatchUpdateEnvConfigForbidden{}
}

/*AdminPatchUpdateEnvConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminPatchUpdateEnvConfigForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminPatchUpdateEnvConfigForbidden) Error() string {
	return fmt.Sprintf("[PATCH /sessionhistory/v1/admin/config/env][%d] adminPatchUpdateEnvConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPatchUpdateEnvConfigForbidden) ToJSONString() string {
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

func (o *AdminPatchUpdateEnvConfigForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchUpdateEnvConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
