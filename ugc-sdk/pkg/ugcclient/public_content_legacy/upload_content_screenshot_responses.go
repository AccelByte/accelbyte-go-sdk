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

// UploadContentScreenshotReader is a Reader for the UploadContentScreenshot structure.
type UploadContentScreenshotReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadContentScreenshotReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewUploadContentScreenshotCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUploadContentScreenshotBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUploadContentScreenshotUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUploadContentScreenshotInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadContentScreenshotCreated creates a UploadContentScreenshotCreated with default headers values
func NewUploadContentScreenshotCreated() *UploadContentScreenshotCreated {
	return &UploadContentScreenshotCreated{}
}

/*UploadContentScreenshotCreated handles this case with default header values.

  Created
*/
type UploadContentScreenshotCreated struct {
	Payload *ugcclientmodels.ModelsCreateScreenshotResponse
}

func (o *UploadContentScreenshotCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotCreated  %+v", 201, o.ToJSONString())
}

func (o *UploadContentScreenshotCreated) ToJSONString() string {
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

func (o *UploadContentScreenshotCreated) GetPayload() *ugcclientmodels.ModelsCreateScreenshotResponse {
	return o.Payload
}

func (o *UploadContentScreenshotCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateScreenshotResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadContentScreenshotBadRequest creates a UploadContentScreenshotBadRequest with default headers values
func NewUploadContentScreenshotBadRequest() *UploadContentScreenshotBadRequest {
	return &UploadContentScreenshotBadRequest{}
}

/*UploadContentScreenshotBadRequest handles this case with default header values.

  Bad Request
*/
type UploadContentScreenshotBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UploadContentScreenshotBadRequest) ToJSONString() string {
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

func (o *UploadContentScreenshotBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUploadContentScreenshotUnauthorized creates a UploadContentScreenshotUnauthorized with default headers values
func NewUploadContentScreenshotUnauthorized() *UploadContentScreenshotUnauthorized {
	return &UploadContentScreenshotUnauthorized{}
}

/*UploadContentScreenshotUnauthorized handles this case with default header values.

  Unauthorized
*/
type UploadContentScreenshotUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UploadContentScreenshotUnauthorized) ToJSONString() string {
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

func (o *UploadContentScreenshotUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUploadContentScreenshotInternalServerError creates a UploadContentScreenshotInternalServerError with default headers values
func NewUploadContentScreenshotInternalServerError() *UploadContentScreenshotInternalServerError {
	return &UploadContentScreenshotInternalServerError{}
}

/*UploadContentScreenshotInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UploadContentScreenshotInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UploadContentScreenshotInternalServerError) ToJSONString() string {
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

func (o *UploadContentScreenshotInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
