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

// CreatePodConfigReader is a Reader for the CreatePodConfig structure.
type CreatePodConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePodConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePodConfigCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePodConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreatePodConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePodConfigConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreatePodConfigInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePodConfigCreated creates a CreatePodConfigCreated with default headers values
func NewCreatePodConfigCreated() *CreatePodConfigCreated {
	return &CreatePodConfigCreated{}
}

/*CreatePodConfigCreated handles this case with default header values.

  pod config created
*/
type CreatePodConfigCreated struct {
	Payload *dsmcclientmodels.ModelsPodConfigRecord
}

func (o *CreatePodConfigCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePodConfigCreated) ToJSONString() string {
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

func (o *CreatePodConfigCreated) GetPayload() *dsmcclientmodels.ModelsPodConfigRecord {
	return o.Payload
}

func (o *CreatePodConfigCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePodConfigBadRequest creates a CreatePodConfigBadRequest with default headers values
func NewCreatePodConfigBadRequest() *CreatePodConfigBadRequest {
	return &CreatePodConfigBadRequest{}
}

/*CreatePodConfigBadRequest handles this case with default header values.

  malformed request
*/
type CreatePodConfigBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePodConfigBadRequest) ToJSONString() string {
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

func (o *CreatePodConfigBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePodConfigUnauthorized creates a CreatePodConfigUnauthorized with default headers values
func NewCreatePodConfigUnauthorized() *CreatePodConfigUnauthorized {
	return &CreatePodConfigUnauthorized{}
}

/*CreatePodConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreatePodConfigUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreatePodConfigUnauthorized) ToJSONString() string {
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

func (o *CreatePodConfigUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePodConfigConflict creates a CreatePodConfigConflict with default headers values
func NewCreatePodConfigConflict() *CreatePodConfigConflict {
	return &CreatePodConfigConflict{}
}

/*CreatePodConfigConflict handles this case with default header values.

  pod config already exists
*/
type CreatePodConfigConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigConflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePodConfigConflict) ToJSONString() string {
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

func (o *CreatePodConfigConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreatePodConfigInternalServerError creates a CreatePodConfigInternalServerError with default headers values
func NewCreatePodConfigInternalServerError() *CreatePodConfigInternalServerError {
	return &CreatePodConfigInternalServerError{}
}

/*CreatePodConfigInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreatePodConfigInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreatePodConfigInternalServerError) ToJSONString() string {
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

func (o *CreatePodConfigInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
