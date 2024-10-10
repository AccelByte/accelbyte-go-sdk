// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package d_s_m_c_default_configuration

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

// AdminGetDSMCConfigurationDefaultReader is a Reader for the AdminGetDSMCConfigurationDefault structure.
type AdminGetDSMCConfigurationDefaultReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetDSMCConfigurationDefaultReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetDSMCConfigurationDefaultOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetDSMCConfigurationDefaultBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetDSMCConfigurationDefaultUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetDSMCConfigurationDefaultForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetDSMCConfigurationDefaultNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetDSMCConfigurationDefaultInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/dsconfigs/default returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetDSMCConfigurationDefaultOK creates a AdminGetDSMCConfigurationDefaultOK with default headers values
func NewAdminGetDSMCConfigurationDefaultOK() *AdminGetDSMCConfigurationDefaultOK {
	return &AdminGetDSMCConfigurationDefaultOK{}
}

/*AdminGetDSMCConfigurationDefaultOK handles this case with default header values.

  Created
*/
type AdminGetDSMCConfigurationDefaultOK struct {
	Payload *sessionclientmodels.ModelsDefaultDSMCConfig
}

func (o *AdminGetDSMCConfigurationDefaultOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/dsconfigs/default][%d] adminGetDSMCConfigurationDefaultOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationDefaultOK) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationDefaultOK) GetPayload() *sessionclientmodels.ModelsDefaultDSMCConfig {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationDefaultOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsDefaultDSMCConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetDSMCConfigurationDefaultBadRequest creates a AdminGetDSMCConfigurationDefaultBadRequest with default headers values
func NewAdminGetDSMCConfigurationDefaultBadRequest() *AdminGetDSMCConfigurationDefaultBadRequest {
	return &AdminGetDSMCConfigurationDefaultBadRequest{}
}

/*AdminGetDSMCConfigurationDefaultBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetDSMCConfigurationDefaultBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationDefaultBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/dsconfigs/default][%d] adminGetDSMCConfigurationDefaultBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationDefaultBadRequest) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationDefaultBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationDefaultBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationDefaultUnauthorized creates a AdminGetDSMCConfigurationDefaultUnauthorized with default headers values
func NewAdminGetDSMCConfigurationDefaultUnauthorized() *AdminGetDSMCConfigurationDefaultUnauthorized {
	return &AdminGetDSMCConfigurationDefaultUnauthorized{}
}

/*AdminGetDSMCConfigurationDefaultUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetDSMCConfigurationDefaultUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationDefaultUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/dsconfigs/default][%d] adminGetDSMCConfigurationDefaultUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationDefaultUnauthorized) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationDefaultUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationDefaultUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationDefaultForbidden creates a AdminGetDSMCConfigurationDefaultForbidden with default headers values
func NewAdminGetDSMCConfigurationDefaultForbidden() *AdminGetDSMCConfigurationDefaultForbidden {
	return &AdminGetDSMCConfigurationDefaultForbidden{}
}

/*AdminGetDSMCConfigurationDefaultForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetDSMCConfigurationDefaultForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationDefaultForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/dsconfigs/default][%d] adminGetDSMCConfigurationDefaultForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationDefaultForbidden) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationDefaultForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationDefaultForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationDefaultNotFound creates a AdminGetDSMCConfigurationDefaultNotFound with default headers values
func NewAdminGetDSMCConfigurationDefaultNotFound() *AdminGetDSMCConfigurationDefaultNotFound {
	return &AdminGetDSMCConfigurationDefaultNotFound{}
}

/*AdminGetDSMCConfigurationDefaultNotFound handles this case with default header values.

  Not Found
*/
type AdminGetDSMCConfigurationDefaultNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationDefaultNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/dsconfigs/default][%d] adminGetDSMCConfigurationDefaultNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationDefaultNotFound) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationDefaultNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationDefaultNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationDefaultInternalServerError creates a AdminGetDSMCConfigurationDefaultInternalServerError with default headers values
func NewAdminGetDSMCConfigurationDefaultInternalServerError() *AdminGetDSMCConfigurationDefaultInternalServerError {
	return &AdminGetDSMCConfigurationDefaultInternalServerError{}
}

/*AdminGetDSMCConfigurationDefaultInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetDSMCConfigurationDefaultInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationDefaultInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/dsconfigs/default][%d] adminGetDSMCConfigurationDefaultInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationDefaultInternalServerError) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationDefaultInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationDefaultInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
