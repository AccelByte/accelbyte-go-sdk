// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// UploadContentScreenshotV2Reader is a Reader for the UploadContentScreenshotV2 structure.
type UploadContentScreenshotV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadContentScreenshotV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewUploadContentScreenshotV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUploadContentScreenshotV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUploadContentScreenshotV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUploadContentScreenshotV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUploadContentScreenshotV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadContentScreenshotV2Created creates a UploadContentScreenshotV2Created with default headers values
func NewUploadContentScreenshotV2Created() *UploadContentScreenshotV2Created {
	return &UploadContentScreenshotV2Created{}
}

/*UploadContentScreenshotV2Created handles this case with default header values.

  Screenshot uploaded
*/
type UploadContentScreenshotV2Created struct {
	Payload *ugcclientmodels.ModelsCreateScreenshotResponse
}

func (o *UploadContentScreenshotV2Created) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotV2Created  %+v", 201, o.ToJSONString())
}

func (o *UploadContentScreenshotV2Created) ToJSONString() string {
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

func (o *UploadContentScreenshotV2Created) GetPayload() *ugcclientmodels.ModelsCreateScreenshotResponse {
	return o.Payload
}

func (o *UploadContentScreenshotV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUploadContentScreenshotV2BadRequest creates a UploadContentScreenshotV2BadRequest with default headers values
func NewUploadContentScreenshotV2BadRequest() *UploadContentScreenshotV2BadRequest {
	return &UploadContentScreenshotV2BadRequest{}
}

/*UploadContentScreenshotV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type UploadContentScreenshotV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UploadContentScreenshotV2BadRequest) ToJSONString() string {
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

func (o *UploadContentScreenshotV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUploadContentScreenshotV2Unauthorized creates a UploadContentScreenshotV2Unauthorized with default headers values
func NewUploadContentScreenshotV2Unauthorized() *UploadContentScreenshotV2Unauthorized {
	return &UploadContentScreenshotV2Unauthorized{}
}

/*UploadContentScreenshotV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UploadContentScreenshotV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UploadContentScreenshotV2Unauthorized) ToJSONString() string {
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

func (o *UploadContentScreenshotV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUploadContentScreenshotV2Forbidden creates a UploadContentScreenshotV2Forbidden with default headers values
func NewUploadContentScreenshotV2Forbidden() *UploadContentScreenshotV2Forbidden {
	return &UploadContentScreenshotV2Forbidden{}
}

/*UploadContentScreenshotV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type UploadContentScreenshotV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UploadContentScreenshotV2Forbidden) ToJSONString() string {
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

func (o *UploadContentScreenshotV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUploadContentScreenshotV2InternalServerError creates a UploadContentScreenshotV2InternalServerError with default headers values
func NewUploadContentScreenshotV2InternalServerError() *UploadContentScreenshotV2InternalServerError {
	return &UploadContentScreenshotV2InternalServerError{}
}

/*UploadContentScreenshotV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type UploadContentScreenshotV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UploadContentScreenshotV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] uploadContentScreenshotV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UploadContentScreenshotV2InternalServerError) ToJSONString() string {
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

func (o *UploadContentScreenshotV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UploadContentScreenshotV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
