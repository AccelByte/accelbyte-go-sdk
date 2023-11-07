// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// CreateContentDirectReader is a Reader for the CreateContentDirect structure.
type CreateContentDirectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateContentDirectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateContentDirectCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateContentDirectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateContentDirectUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateContentDirectInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateContentDirectCreated creates a CreateContentDirectCreated with default headers values
func NewCreateContentDirectCreated() *CreateContentDirectCreated {
	return &CreateContentDirectCreated{}
}

/*CreateContentDirectCreated handles this case with default header values.

  Created
*/
type CreateContentDirectCreated struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *CreateContentDirectCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] createContentDirectCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateContentDirectCreated) ToJSONString() string {
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

func (o *CreateContentDirectCreated) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *CreateContentDirectCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateContentDirectBadRequest creates a CreateContentDirectBadRequest with default headers values
func NewCreateContentDirectBadRequest() *CreateContentDirectBadRequest {
	return &CreateContentDirectBadRequest{}
}

/*CreateContentDirectBadRequest handles this case with default header values.

  Bad Request
*/
type CreateContentDirectBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateContentDirectBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] createContentDirectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateContentDirectBadRequest) ToJSONString() string {
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

func (o *CreateContentDirectBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateContentDirectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateContentDirectUnauthorized creates a CreateContentDirectUnauthorized with default headers values
func NewCreateContentDirectUnauthorized() *CreateContentDirectUnauthorized {
	return &CreateContentDirectUnauthorized{}
}

/*CreateContentDirectUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateContentDirectUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateContentDirectUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] createContentDirectUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateContentDirectUnauthorized) ToJSONString() string {
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

func (o *CreateContentDirectUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateContentDirectUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateContentDirectInternalServerError creates a CreateContentDirectInternalServerError with default headers values
func NewCreateContentDirectInternalServerError() *CreateContentDirectInternalServerError {
	return &CreateContentDirectInternalServerError{}
}

/*CreateContentDirectInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateContentDirectInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *CreateContentDirectInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] createContentDirectInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateContentDirectInternalServerError) ToJSONString() string {
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

func (o *CreateContentDirectInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *CreateContentDirectInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
