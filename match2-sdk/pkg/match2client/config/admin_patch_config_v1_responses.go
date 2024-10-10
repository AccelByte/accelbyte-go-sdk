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

// AdminPatchConfigV1Reader is a Reader for the AdminPatchConfigV1 structure.
type AdminPatchConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPatchConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPatchConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPatchConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPatchConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPatchConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /match2/v1/config/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPatchConfigV1OK creates a AdminPatchConfigV1OK with default headers values
func NewAdminPatchConfigV1OK() *AdminPatchConfigV1OK {
	return &AdminPatchConfigV1OK{}
}

/*AdminPatchConfigV1OK handles this case with default header values.

  OK
*/
type AdminPatchConfigV1OK struct {
	Payload *match2clientmodels.ConfigmodelsNamespaceConfig
}

func (o *AdminPatchConfigV1OK) Error() string {
	return fmt.Sprintf("[PATCH /match2/v1/config/namespaces/{namespace}][%d] adminPatchConfigV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPatchConfigV1OK) ToJSONString() string {
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

func (o *AdminPatchConfigV1OK) GetPayload() *match2clientmodels.ConfigmodelsNamespaceConfig {
	return o.Payload
}

func (o *AdminPatchConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ConfigmodelsNamespaceConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPatchConfigV1Unauthorized creates a AdminPatchConfigV1Unauthorized with default headers values
func NewAdminPatchConfigV1Unauthorized() *AdminPatchConfigV1Unauthorized {
	return &AdminPatchConfigV1Unauthorized{}
}

/*AdminPatchConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminPatchConfigV1Unauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminPatchConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /match2/v1/config/namespaces/{namespace}][%d] adminPatchConfigV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPatchConfigV1Unauthorized) ToJSONString() string {
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

func (o *AdminPatchConfigV1Unauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPatchConfigV1Forbidden creates a AdminPatchConfigV1Forbidden with default headers values
func NewAdminPatchConfigV1Forbidden() *AdminPatchConfigV1Forbidden {
	return &AdminPatchConfigV1Forbidden{}
}

/*AdminPatchConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminPatchConfigV1Forbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminPatchConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /match2/v1/config/namespaces/{namespace}][%d] adminPatchConfigV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPatchConfigV1Forbidden) ToJSONString() string {
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

func (o *AdminPatchConfigV1Forbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPatchConfigV1InternalServerError creates a AdminPatchConfigV1InternalServerError with default headers values
func NewAdminPatchConfigV1InternalServerError() *AdminPatchConfigV1InternalServerError {
	return &AdminPatchConfigV1InternalServerError{}
}

/*AdminPatchConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminPatchConfigV1InternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminPatchConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /match2/v1/config/namespaces/{namespace}][%d] adminPatchConfigV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPatchConfigV1InternalServerError) ToJSONString() string {
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

func (o *AdminPatchConfigV1InternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminPatchConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
