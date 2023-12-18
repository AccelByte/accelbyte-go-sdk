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

// UpdateContentShareCodeV2Reader is a Reader for the UpdateContentShareCodeV2 structure.
type UpdateContentShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateContentShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateContentShareCodeV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateContentShareCodeV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateContentShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateContentShareCodeV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateContentShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateContentShareCodeV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateContentShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateContentShareCodeV2OK creates a UpdateContentShareCodeV2OK with default headers values
func NewUpdateContentShareCodeV2OK() *UpdateContentShareCodeV2OK {
	return &UpdateContentShareCodeV2OK{}
}

/*UpdateContentShareCodeV2OK handles this case with default header values.

  Update content sharecode
*/
type UpdateContentShareCodeV2OK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponseV2
}

func (o *UpdateContentShareCodeV2OK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2OK) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2OK) GetPayload() *ugcclientmodels.ModelsCreateContentResponseV2 {
	return o.Payload
}

func (o *UpdateContentShareCodeV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateContentShareCodeV2BadRequest creates a UpdateContentShareCodeV2BadRequest with default headers values
func NewUpdateContentShareCodeV2BadRequest() *UpdateContentShareCodeV2BadRequest {
	return &UpdateContentShareCodeV2BadRequest{}
}

/*UpdateContentShareCodeV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr><tr><td>772607</td><td>Unable to update ugc content: invalid shareCode format</td></tr></table>
*/
type UpdateContentShareCodeV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2BadRequest) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentShareCodeV2Unauthorized creates a UpdateContentShareCodeV2Unauthorized with default headers values
func NewUpdateContentShareCodeV2Unauthorized() *UpdateContentShareCodeV2Unauthorized {
	return &UpdateContentShareCodeV2Unauthorized{}
}

/*UpdateContentShareCodeV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateContentShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentShareCodeV2Forbidden creates a UpdateContentShareCodeV2Forbidden with default headers values
func NewUpdateContentShareCodeV2Forbidden() *UpdateContentShareCodeV2Forbidden {
	return &UpdateContentShareCodeV2Forbidden{}
}

/*UpdateContentShareCodeV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateContentShareCodeV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2Forbidden) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentShareCodeV2NotFound creates a UpdateContentShareCodeV2NotFound with default headers values
func NewUpdateContentShareCodeV2NotFound() *UpdateContentShareCodeV2NotFound {
	return &UpdateContentShareCodeV2NotFound{}
}

/*UpdateContentShareCodeV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type UpdateContentShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2NotFound) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentShareCodeV2Conflict creates a UpdateContentShareCodeV2Conflict with default headers values
func NewUpdateContentShareCodeV2Conflict() *UpdateContentShareCodeV2Conflict {
	return &UpdateContentShareCodeV2Conflict{}
}

/*UpdateContentShareCodeV2Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772606</td><td>Share code already used</td></tr></table>
*/
type UpdateContentShareCodeV2Conflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeV2Conflict) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2Conflict) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2Conflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentShareCodeV2InternalServerError creates a UpdateContentShareCodeV2InternalServerError with default headers values
func NewUpdateContentShareCodeV2InternalServerError() *UpdateContentShareCodeV2InternalServerError {
	return &UpdateContentShareCodeV2InternalServerError{}
}

/*UpdateContentShareCodeV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr></table>
*/
type UpdateContentShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/sharecode][%d] updateContentShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateContentShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *UpdateContentShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
