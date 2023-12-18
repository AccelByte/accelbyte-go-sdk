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

// UpdateContentS3Reader is a Reader for the UpdateContentS3 structure.
type UpdateContentS3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateContentS3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateContentS3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateContentS3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateContentS3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateContentS3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateContentS3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateContentS3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateContentS3OK creates a UpdateContentS3OK with default headers values
func NewUpdateContentS3OK() *UpdateContentS3OK {
	return &UpdateContentS3OK{}
}

/*UpdateContentS3OK handles this case with default header values.

  Content updated at S3 bucket
*/
type UpdateContentS3OK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *UpdateContentS3OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}][%d] updateContentS3OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateContentS3OK) ToJSONString() string {
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

func (o *UpdateContentS3OK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *UpdateContentS3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentS3BadRequest creates a UpdateContentS3BadRequest with default headers values
func NewUpdateContentS3BadRequest() *UpdateContentS3BadRequest {
	return &UpdateContentS3BadRequest{}
}

/*UpdateContentS3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type UpdateContentS3BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentS3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}][%d] updateContentS3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateContentS3BadRequest) ToJSONString() string {
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

func (o *UpdateContentS3BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentS3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentS3Unauthorized creates a UpdateContentS3Unauthorized with default headers values
func NewUpdateContentS3Unauthorized() *UpdateContentS3Unauthorized {
	return &UpdateContentS3Unauthorized{}
}

/*UpdateContentS3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateContentS3Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentS3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}][%d] updateContentS3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateContentS3Unauthorized) ToJSONString() string {
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

func (o *UpdateContentS3Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentS3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentS3Forbidden creates a UpdateContentS3Forbidden with default headers values
func NewUpdateContentS3Forbidden() *UpdateContentS3Forbidden {
	return &UpdateContentS3Forbidden{}
}

/*UpdateContentS3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type UpdateContentS3Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentS3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}][%d] updateContentS3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateContentS3Forbidden) ToJSONString() string {
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

func (o *UpdateContentS3Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentS3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentS3NotFound creates a UpdateContentS3NotFound with default headers values
func NewUpdateContentS3NotFound() *UpdateContentS3NotFound {
	return &UpdateContentS3NotFound{}
}

/*UpdateContentS3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type UpdateContentS3NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentS3NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}][%d] updateContentS3NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateContentS3NotFound) ToJSONString() string {
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

func (o *UpdateContentS3NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentS3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentS3InternalServerError creates a UpdateContentS3InternalServerError with default headers values
func NewUpdateContentS3InternalServerError() *UpdateContentS3InternalServerError {
	return &UpdateContentS3InternalServerError{}
}

/*UpdateContentS3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type UpdateContentS3InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentS3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}][%d] updateContentS3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateContentS3InternalServerError) ToJSONString() string {
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

func (o *UpdateContentS3InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentS3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
