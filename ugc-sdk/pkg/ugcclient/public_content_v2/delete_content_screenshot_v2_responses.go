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

// DeleteContentScreenshotV2Reader is a Reader for the DeleteContentScreenshotV2 structure.
type DeleteContentScreenshotV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteContentScreenshotV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteContentScreenshotV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteContentScreenshotV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteContentScreenshotV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteContentScreenshotV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteContentScreenshotV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteContentScreenshotV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteContentScreenshotV2NoContent creates a DeleteContentScreenshotV2NoContent with default headers values
func NewDeleteContentScreenshotV2NoContent() *DeleteContentScreenshotV2NoContent {
	return &DeleteContentScreenshotV2NoContent{}
}

/*DeleteContentScreenshotV2NoContent handles this case with default header values.

  Screenshot deleted
*/
type DeleteContentScreenshotV2NoContent struct {
}

func (o *DeleteContentScreenshotV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}][%d] deleteContentScreenshotV2NoContent ", 204)
}

func (o *DeleteContentScreenshotV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteContentScreenshotV2BadRequest creates a DeleteContentScreenshotV2BadRequest with default headers values
func NewDeleteContentScreenshotV2BadRequest() *DeleteContentScreenshotV2BadRequest {
	return &DeleteContentScreenshotV2BadRequest{}
}

/*DeleteContentScreenshotV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type DeleteContentScreenshotV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentScreenshotV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}][%d] deleteContentScreenshotV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteContentScreenshotV2BadRequest) ToJSONString() string {
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

func (o *DeleteContentScreenshotV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentScreenshotV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentScreenshotV2Unauthorized creates a DeleteContentScreenshotV2Unauthorized with default headers values
func NewDeleteContentScreenshotV2Unauthorized() *DeleteContentScreenshotV2Unauthorized {
	return &DeleteContentScreenshotV2Unauthorized{}
}

/*DeleteContentScreenshotV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteContentScreenshotV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentScreenshotV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}][%d] deleteContentScreenshotV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteContentScreenshotV2Unauthorized) ToJSONString() string {
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

func (o *DeleteContentScreenshotV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentScreenshotV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentScreenshotV2Forbidden creates a DeleteContentScreenshotV2Forbidden with default headers values
func NewDeleteContentScreenshotV2Forbidden() *DeleteContentScreenshotV2Forbidden {
	return &DeleteContentScreenshotV2Forbidden{}
}

/*DeleteContentScreenshotV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type DeleteContentScreenshotV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentScreenshotV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}][%d] deleteContentScreenshotV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteContentScreenshotV2Forbidden) ToJSONString() string {
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

func (o *DeleteContentScreenshotV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentScreenshotV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentScreenshotV2NotFound creates a DeleteContentScreenshotV2NotFound with default headers values
func NewDeleteContentScreenshotV2NotFound() *DeleteContentScreenshotV2NotFound {
	return &DeleteContentScreenshotV2NotFound{}
}

/*DeleteContentScreenshotV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type DeleteContentScreenshotV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentScreenshotV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}][%d] deleteContentScreenshotV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteContentScreenshotV2NotFound) ToJSONString() string {
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

func (o *DeleteContentScreenshotV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentScreenshotV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentScreenshotV2InternalServerError creates a DeleteContentScreenshotV2InternalServerError with default headers values
func NewDeleteContentScreenshotV2InternalServerError() *DeleteContentScreenshotV2InternalServerError {
	return &DeleteContentScreenshotV2InternalServerError{}
}

/*DeleteContentScreenshotV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type DeleteContentScreenshotV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentScreenshotV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}][%d] deleteContentScreenshotV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteContentScreenshotV2InternalServerError) ToJSONString() string {
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

func (o *DeleteContentScreenshotV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentScreenshotV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
