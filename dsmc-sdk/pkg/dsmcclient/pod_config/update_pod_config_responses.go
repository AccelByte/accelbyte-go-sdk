// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// UpdatePodConfigReader is a Reader for the UpdatePodConfig structure.
type UpdatePodConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePodConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePodConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePodConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdatePodConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdatePodConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdatePodConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdatePodConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePodConfigOK creates a UpdatePodConfigOK with default headers values
func NewUpdatePodConfigOK() *UpdatePodConfigOK {
	return &UpdatePodConfigOK{}
}

/*UpdatePodConfigOK handles this case with default header values.

  pod config updated
*/
type UpdatePodConfigOK struct {
	Payload *dsmcclientmodels.ModelsPodConfigRecord
}

func (o *UpdatePodConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] updatePodConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePodConfigOK) ToJSONString() string {
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

func (o *UpdatePodConfigOK) GetPayload() *dsmcclientmodels.ModelsPodConfigRecord {
	return o.Payload
}

func (o *UpdatePodConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsPodConfigRecord)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePodConfigBadRequest creates a UpdatePodConfigBadRequest with default headers values
func NewUpdatePodConfigBadRequest() *UpdatePodConfigBadRequest {
	return &UpdatePodConfigBadRequest{}
}

/*UpdatePodConfigBadRequest handles this case with default header values.

  malformed request
*/
type UpdatePodConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePodConfigBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] updatePodConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePodConfigBadRequest) ToJSONString() string {
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

func (o *UpdatePodConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePodConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePodConfigUnauthorized creates a UpdatePodConfigUnauthorized with default headers values
func NewUpdatePodConfigUnauthorized() *UpdatePodConfigUnauthorized {
	return &UpdatePodConfigUnauthorized{}
}

/*UpdatePodConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdatePodConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePodConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] updatePodConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdatePodConfigUnauthorized) ToJSONString() string {
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

func (o *UpdatePodConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePodConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePodConfigNotFound creates a UpdatePodConfigNotFound with default headers values
func NewUpdatePodConfigNotFound() *UpdatePodConfigNotFound {
	return &UpdatePodConfigNotFound{}
}

/*UpdatePodConfigNotFound handles this case with default header values.

  pod config not found
*/
type UpdatePodConfigNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePodConfigNotFound) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] updatePodConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdatePodConfigNotFound) ToJSONString() string {
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

func (o *UpdatePodConfigNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePodConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePodConfigConflict creates a UpdatePodConfigConflict with default headers values
func NewUpdatePodConfigConflict() *UpdatePodConfigConflict {
	return &UpdatePodConfigConflict{}
}

/*UpdatePodConfigConflict handles this case with default header values.

  pod config with same name already exist
*/
type UpdatePodConfigConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePodConfigConflict) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] updatePodConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdatePodConfigConflict) ToJSONString() string {
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

func (o *UpdatePodConfigConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePodConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePodConfigInternalServerError creates a UpdatePodConfigInternalServerError with default headers values
func NewUpdatePodConfigInternalServerError() *UpdatePodConfigInternalServerError {
	return &UpdatePodConfigInternalServerError{}
}

/*UpdatePodConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdatePodConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *UpdatePodConfigInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] updatePodConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdatePodConfigInternalServerError) ToJSONString() string {
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

func (o *UpdatePodConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdatePodConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
