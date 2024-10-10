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

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// AdminGetAllConfigV1Reader is a Reader for the AdminGetAllConfigV1 structure.
type AdminGetAllConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAllConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAllConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAllConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAllConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAllConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAllConfigV1OK creates a AdminGetAllConfigV1OK with default headers values
func NewAdminGetAllConfigV1OK() *AdminGetAllConfigV1OK {
	return &AdminGetAllConfigV1OK{}
}

/*AdminGetAllConfigV1OK handles this case with default header values.

  OK
*/
type AdminGetAllConfigV1OK struct {
	Payload *match2clientmodels.APINamespaceConfigList
}

func (o *AdminGetAllConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/config][%d] adminGetAllConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAllConfigV1OK) ToJSONString() string {
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

func (o *AdminGetAllConfigV1OK) GetPayload() *match2clientmodels.APINamespaceConfigList {
	return o.Payload
}

func (o *AdminGetAllConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APINamespaceConfigList)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllConfigV1Unauthorized creates a AdminGetAllConfigV1Unauthorized with default headers values
func NewAdminGetAllConfigV1Unauthorized() *AdminGetAllConfigV1Unauthorized {
	return &AdminGetAllConfigV1Unauthorized{}
}

/*AdminGetAllConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetAllConfigV1Unauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetAllConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/config][%d] adminGetAllConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAllConfigV1Unauthorized) ToJSONString() string {
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

func (o *AdminGetAllConfigV1Unauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllConfigV1Forbidden creates a AdminGetAllConfigV1Forbidden with default headers values
func NewAdminGetAllConfigV1Forbidden() *AdminGetAllConfigV1Forbidden {
	return &AdminGetAllConfigV1Forbidden{}
}

/*AdminGetAllConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminGetAllConfigV1Forbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetAllConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/config][%d] adminGetAllConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAllConfigV1Forbidden) ToJSONString() string {
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

func (o *AdminGetAllConfigV1Forbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllConfigV1InternalServerError creates a AdminGetAllConfigV1InternalServerError with default headers values
func NewAdminGetAllConfigV1InternalServerError() *AdminGetAllConfigV1InternalServerError {
	return &AdminGetAllConfigV1InternalServerError{}
}

/*AdminGetAllConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetAllConfigV1InternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetAllConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/config][%d] adminGetAllConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAllConfigV1InternalServerError) ToJSONString() string {
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

func (o *AdminGetAllConfigV1InternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetAllConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
