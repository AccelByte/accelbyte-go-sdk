// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// UpdateServerConfigReader is a Reader for the UpdateServerConfig structure.
type UpdateServerConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateServerConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateServerConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateServerConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateServerConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateServerConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /qosm/admin/namespaces/{namespace}/servers/{region} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateServerConfigNoContent creates a UpdateServerConfigNoContent with default headers values
func NewUpdateServerConfigNoContent() *UpdateServerConfigNoContent {
	return &UpdateServerConfigNoContent{}
}

/*UpdateServerConfigNoContent handles this case with default header values.

  record updated
*/
type UpdateServerConfigNoContent struct {
}

func (o *UpdateServerConfigNoContent) Error() string {
	return fmt.Sprintf("[PATCH /qosm/admin/namespaces/{namespace}/servers/{region}][%d] updateServerConfigNoContent ", 204)
}

func (o *UpdateServerConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateServerConfigBadRequest creates a UpdateServerConfigBadRequest with default headers values
func NewUpdateServerConfigBadRequest() *UpdateServerConfigBadRequest {
	return &UpdateServerConfigBadRequest{}
}

/*UpdateServerConfigBadRequest handles this case with default header values.

  malformed request
*/
type UpdateServerConfigBadRequest struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *UpdateServerConfigBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /qosm/admin/namespaces/{namespace}/servers/{region}][%d] updateServerConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateServerConfigBadRequest) ToJSONString() string {
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

func (o *UpdateServerConfigBadRequest) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateServerConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateServerConfigNotFound creates a UpdateServerConfigNotFound with default headers values
func NewUpdateServerConfigNotFound() *UpdateServerConfigNotFound {
	return &UpdateServerConfigNotFound{}
}

/*UpdateServerConfigNotFound handles this case with default header values.

  server record not found
*/
type UpdateServerConfigNotFound struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *UpdateServerConfigNotFound) Error() string {
	return fmt.Sprintf("[PATCH /qosm/admin/namespaces/{namespace}/servers/{region}][%d] updateServerConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateServerConfigNotFound) ToJSONString() string {
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

func (o *UpdateServerConfigNotFound) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateServerConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateServerConfigInternalServerError creates a UpdateServerConfigInternalServerError with default headers values
func NewUpdateServerConfigInternalServerError() *UpdateServerConfigInternalServerError {
	return &UpdateServerConfigInternalServerError{}
}

/*UpdateServerConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateServerConfigInternalServerError struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *UpdateServerConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /qosm/admin/namespaces/{namespace}/servers/{region}][%d] updateServerConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateServerConfigInternalServerError) ToJSONString() string {
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

func (o *UpdateServerConfigInternalServerError) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateServerConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
