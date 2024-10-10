// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_template

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

// AdminGetDSMCConfigurationReader is a Reader for the AdminGetDSMCConfiguration structure.
type AdminGetDSMCConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetDSMCConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetDSMCConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetDSMCConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetDSMCConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetDSMCConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetDSMCConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetDSMCConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/dsconfigs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetDSMCConfigurationOK creates a AdminGetDSMCConfigurationOK with default headers values
func NewAdminGetDSMCConfigurationOK() *AdminGetDSMCConfigurationOK {
	return &AdminGetDSMCConfigurationOK{}
}

/*AdminGetDSMCConfigurationOK handles this case with default header values.

  Created
*/
type AdminGetDSMCConfigurationOK struct {
	Payload *sessionclientmodels.ModelsDSMConfigRecord
}

func (o *AdminGetDSMCConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs][%d] adminGetDSMCConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationOK) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationOK) GetPayload() *sessionclientmodels.ModelsDSMConfigRecord {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsDSMConfigRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetDSMCConfigurationBadRequest creates a AdminGetDSMCConfigurationBadRequest with default headers values
func NewAdminGetDSMCConfigurationBadRequest() *AdminGetDSMCConfigurationBadRequest {
	return &AdminGetDSMCConfigurationBadRequest{}
}

/*AdminGetDSMCConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetDSMCConfigurationBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs][%d] adminGetDSMCConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationUnauthorized creates a AdminGetDSMCConfigurationUnauthorized with default headers values
func NewAdminGetDSMCConfigurationUnauthorized() *AdminGetDSMCConfigurationUnauthorized {
	return &AdminGetDSMCConfigurationUnauthorized{}
}

/*AdminGetDSMCConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetDSMCConfigurationUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs][%d] adminGetDSMCConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationForbidden creates a AdminGetDSMCConfigurationForbidden with default headers values
func NewAdminGetDSMCConfigurationForbidden() *AdminGetDSMCConfigurationForbidden {
	return &AdminGetDSMCConfigurationForbidden{}
}

/*AdminGetDSMCConfigurationForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetDSMCConfigurationForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs][%d] adminGetDSMCConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationForbidden) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationNotFound creates a AdminGetDSMCConfigurationNotFound with default headers values
func NewAdminGetDSMCConfigurationNotFound() *AdminGetDSMCConfigurationNotFound {
	return &AdminGetDSMCConfigurationNotFound{}
}

/*AdminGetDSMCConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminGetDSMCConfigurationNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs][%d] adminGetDSMCConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationNotFound) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetDSMCConfigurationInternalServerError creates a AdminGetDSMCConfigurationInternalServerError with default headers values
func NewAdminGetDSMCConfigurationInternalServerError() *AdminGetDSMCConfigurationInternalServerError {
	return &AdminGetDSMCConfigurationInternalServerError{}
}

/*AdminGetDSMCConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetDSMCConfigurationInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetDSMCConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs][%d] adminGetDSMCConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetDSMCConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminGetDSMCConfigurationInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetDSMCConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
