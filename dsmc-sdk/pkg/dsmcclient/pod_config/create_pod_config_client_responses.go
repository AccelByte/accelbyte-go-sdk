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

// CreatePodConfigClientReader is a Reader for the CreatePodConfigClient structure.
type CreatePodConfigClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreatePodConfigClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreatePodConfigClientCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreatePodConfigClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreatePodConfigClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreatePodConfigClientConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreatePodConfigClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/namespaces/{namespace}/configs/pods/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreatePodConfigClientCreated creates a CreatePodConfigClientCreated with default headers values
func NewCreatePodConfigClientCreated() *CreatePodConfigClientCreated {
	return &CreatePodConfigClientCreated{}
}

/*CreatePodConfigClientCreated handles this case with default header values.

  pod config created
*/
type CreatePodConfigClientCreated struct {
	Payload *dsmcclientmodels.ModelsPodConfigRecord
}

func (o *CreatePodConfigClientCreated) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigClientCreated  %+v", 201, o.ToJSONString())
}

func (o *CreatePodConfigClientCreated) ToJSONString() string {
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

func (o *CreatePodConfigClientCreated) GetPayload() *dsmcclientmodels.ModelsPodConfigRecord {
	return o.Payload
}

func (o *CreatePodConfigClientCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreatePodConfigClientBadRequest creates a CreatePodConfigClientBadRequest with default headers values
func NewCreatePodConfigClientBadRequest() *CreatePodConfigClientBadRequest {
	return &CreatePodConfigClientBadRequest{}
}

/*CreatePodConfigClientBadRequest handles this case with default header values.

  malformed request
*/
type CreatePodConfigClientBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigClientBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreatePodConfigClientBadRequest) ToJSONString() string {
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

func (o *CreatePodConfigClientBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreatePodConfigClientUnauthorized creates a CreatePodConfigClientUnauthorized with default headers values
func NewCreatePodConfigClientUnauthorized() *CreatePodConfigClientUnauthorized {
	return &CreatePodConfigClientUnauthorized{}
}

/*CreatePodConfigClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreatePodConfigClientUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigClientUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreatePodConfigClientUnauthorized) ToJSONString() string {
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

func (o *CreatePodConfigClientUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreatePodConfigClientConflict creates a CreatePodConfigClientConflict with default headers values
func NewCreatePodConfigClientConflict() *CreatePodConfigClientConflict {
	return &CreatePodConfigClientConflict{}
}

/*CreatePodConfigClientConflict handles this case with default header values.

  pod config already exists
*/
type CreatePodConfigClientConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigClientConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigClientConflict  %+v", 409, o.ToJSONString())
}

func (o *CreatePodConfigClientConflict) ToJSONString() string {
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

func (o *CreatePodConfigClientConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigClientConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreatePodConfigClientInternalServerError creates a CreatePodConfigClientInternalServerError with default headers values
func NewCreatePodConfigClientInternalServerError() *CreatePodConfigClientInternalServerError {
	return &CreatePodConfigClientInternalServerError{}
}

/*CreatePodConfigClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreatePodConfigClientInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *CreatePodConfigClientInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/configs/pods/{name}][%d] createPodConfigClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreatePodConfigClientInternalServerError) ToJSONString() string {
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

func (o *CreatePodConfigClientInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreatePodConfigClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
