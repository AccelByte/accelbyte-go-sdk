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

// AdminSyncDSMCConfigurationReader is a Reader for the AdminSyncDSMCConfiguration structure.
type AdminSyncDSMCConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSyncDSMCConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSyncDSMCConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSyncDSMCConfigurationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSyncDSMCConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSyncDSMCConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSyncDSMCConfigurationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSyncDSMCConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSyncDSMCConfigurationOK creates a AdminSyncDSMCConfigurationOK with default headers values
func NewAdminSyncDSMCConfigurationOK() *AdminSyncDSMCConfigurationOK {
	return &AdminSyncDSMCConfigurationOK{}
}

/*AdminSyncDSMCConfigurationOK handles this case with default header values.

  Created
*/
type AdminSyncDSMCConfigurationOK struct {
	Payload *sessionclientmodels.ModelsDSMConfigRecord
}

func (o *AdminSyncDSMCConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync][%d] adminSyncDSMCConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminSyncDSMCConfigurationOK) ToJSONString() string {
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

func (o *AdminSyncDSMCConfigurationOK) GetPayload() *sessionclientmodels.ModelsDSMConfigRecord {
	return o.Payload
}

func (o *AdminSyncDSMCConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncDSMCConfigurationBadRequest creates a AdminSyncDSMCConfigurationBadRequest with default headers values
func NewAdminSyncDSMCConfigurationBadRequest() *AdminSyncDSMCConfigurationBadRequest {
	return &AdminSyncDSMCConfigurationBadRequest{}
}

/*AdminSyncDSMCConfigurationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSyncDSMCConfigurationBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncDSMCConfigurationBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync][%d] adminSyncDSMCConfigurationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSyncDSMCConfigurationBadRequest) ToJSONString() string {
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

func (o *AdminSyncDSMCConfigurationBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncDSMCConfigurationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncDSMCConfigurationUnauthorized creates a AdminSyncDSMCConfigurationUnauthorized with default headers values
func NewAdminSyncDSMCConfigurationUnauthorized() *AdminSyncDSMCConfigurationUnauthorized {
	return &AdminSyncDSMCConfigurationUnauthorized{}
}

/*AdminSyncDSMCConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSyncDSMCConfigurationUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncDSMCConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync][%d] adminSyncDSMCConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSyncDSMCConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminSyncDSMCConfigurationUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncDSMCConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncDSMCConfigurationForbidden creates a AdminSyncDSMCConfigurationForbidden with default headers values
func NewAdminSyncDSMCConfigurationForbidden() *AdminSyncDSMCConfigurationForbidden {
	return &AdminSyncDSMCConfigurationForbidden{}
}

/*AdminSyncDSMCConfigurationForbidden handles this case with default header values.

  Forbidden
*/
type AdminSyncDSMCConfigurationForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncDSMCConfigurationForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync][%d] adminSyncDSMCConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSyncDSMCConfigurationForbidden) ToJSONString() string {
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

func (o *AdminSyncDSMCConfigurationForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncDSMCConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncDSMCConfigurationNotFound creates a AdminSyncDSMCConfigurationNotFound with default headers values
func NewAdminSyncDSMCConfigurationNotFound() *AdminSyncDSMCConfigurationNotFound {
	return &AdminSyncDSMCConfigurationNotFound{}
}

/*AdminSyncDSMCConfigurationNotFound handles this case with default header values.

  Not Found
*/
type AdminSyncDSMCConfigurationNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncDSMCConfigurationNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync][%d] adminSyncDSMCConfigurationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSyncDSMCConfigurationNotFound) ToJSONString() string {
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

func (o *AdminSyncDSMCConfigurationNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncDSMCConfigurationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminSyncDSMCConfigurationInternalServerError creates a AdminSyncDSMCConfigurationInternalServerError with default headers values
func NewAdminSyncDSMCConfigurationInternalServerError() *AdminSyncDSMCConfigurationInternalServerError {
	return &AdminSyncDSMCConfigurationInternalServerError{}
}

/*AdminSyncDSMCConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSyncDSMCConfigurationInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminSyncDSMCConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/dsconfigs/sync][%d] adminSyncDSMCConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSyncDSMCConfigurationInternalServerError) ToJSONString() string {
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

func (o *AdminSyncDSMCConfigurationInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminSyncDSMCConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
