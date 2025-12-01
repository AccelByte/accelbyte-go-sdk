// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// CreateTopicHandlerReader is a Reader for the CreateTopicHandler structure.
type CreateTopicHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateTopicHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateTopicHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateTopicHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateTopicHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateTopicHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateTopicHandlerConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateTopicHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateTopicHandlerOK creates a CreateTopicHandlerOK with default headers values
func NewCreateTopicHandlerOK() *CreateTopicHandlerOK {
	return &CreateTopicHandlerOK{}
}

/*CreateTopicHandlerOK handles this case with default header values.

  OK
*/
type CreateTopicHandlerOK struct {
	Payload *csmclientmodels.ApimodelTopicResponse
}

func (o *CreateTopicHandlerOK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] createTopicHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *CreateTopicHandlerOK) ToJSONString() string {
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

func (o *CreateTopicHandlerOK) GetPayload() *csmclientmodels.ApimodelTopicResponse {
	return o.Payload
}

func (o *CreateTopicHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelTopicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicHandlerBadRequest creates a CreateTopicHandlerBadRequest with default headers values
func NewCreateTopicHandlerBadRequest() *CreateTopicHandlerBadRequest {
	return &CreateTopicHandlerBadRequest{}
}

/*CreateTopicHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type CreateTopicHandlerBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateTopicHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] createTopicHandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateTopicHandlerBadRequest) ToJSONString() string {
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

func (o *CreateTopicHandlerBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateTopicHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicHandlerUnauthorized creates a CreateTopicHandlerUnauthorized with default headers values
func NewCreateTopicHandlerUnauthorized() *CreateTopicHandlerUnauthorized {
	return &CreateTopicHandlerUnauthorized{}
}

/*CreateTopicHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateTopicHandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateTopicHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] createTopicHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateTopicHandlerUnauthorized) ToJSONString() string {
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

func (o *CreateTopicHandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateTopicHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicHandlerForbidden creates a CreateTopicHandlerForbidden with default headers values
func NewCreateTopicHandlerForbidden() *CreateTopicHandlerForbidden {
	return &CreateTopicHandlerForbidden{}
}

/*CreateTopicHandlerForbidden handles this case with default header values.

  Forbidden
*/
type CreateTopicHandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateTopicHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] createTopicHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateTopicHandlerForbidden) ToJSONString() string {
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

func (o *CreateTopicHandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateTopicHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicHandlerConflict creates a CreateTopicHandlerConflict with default headers values
func NewCreateTopicHandlerConflict() *CreateTopicHandlerConflict {
	return &CreateTopicHandlerConflict{}
}

/*CreateTopicHandlerConflict handles this case with default header values.

  Conflict
*/
type CreateTopicHandlerConflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateTopicHandlerConflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] createTopicHandlerConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateTopicHandlerConflict) ToJSONString() string {
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

func (o *CreateTopicHandlerConflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateTopicHandlerConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateTopicHandlerInternalServerError creates a CreateTopicHandlerInternalServerError with default headers values
func NewCreateTopicHandlerInternalServerError() *CreateTopicHandlerInternalServerError {
	return &CreateTopicHandlerInternalServerError{}
}

/*CreateTopicHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateTopicHandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateTopicHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics][%d] createTopicHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateTopicHandlerInternalServerError) ToJSONString() string {
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

func (o *CreateTopicHandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateTopicHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
