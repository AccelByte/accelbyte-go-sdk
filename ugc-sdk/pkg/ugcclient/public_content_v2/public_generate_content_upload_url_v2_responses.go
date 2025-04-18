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

// PublicGenerateContentUploadURLV2Reader is a Reader for the PublicGenerateContentUploadURLV2 structure.
type PublicGenerateContentUploadURLV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGenerateContentUploadURLV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGenerateContentUploadURLV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGenerateContentUploadURLV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGenerateContentUploadURLV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGenerateContentUploadURLV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGenerateContentUploadURLV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGenerateContentUploadURLV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGenerateContentUploadURLV2OK creates a PublicGenerateContentUploadURLV2OK with default headers values
func NewPublicGenerateContentUploadURLV2OK() *PublicGenerateContentUploadURLV2OK {
	return &PublicGenerateContentUploadURLV2OK{}
}

/*PublicGenerateContentUploadURLV2OK handles this case with default header values.

  content upload URL generated
*/
type PublicGenerateContentUploadURLV2OK struct {
	Payload *ugcclientmodels.ModelsGenerateContentUploadURLResponse
}

func (o *PublicGenerateContentUploadURLV2OK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] publicGenerateContentUploadUrlV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGenerateContentUploadURLV2OK) ToJSONString() string {
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

func (o *PublicGenerateContentUploadURLV2OK) GetPayload() *ugcclientmodels.ModelsGenerateContentUploadURLResponse {
	return o.Payload
}

func (o *PublicGenerateContentUploadURLV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsGenerateContentUploadURLResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGenerateContentUploadURLV2BadRequest creates a PublicGenerateContentUploadURLV2BadRequest with default headers values
func NewPublicGenerateContentUploadURLV2BadRequest() *PublicGenerateContentUploadURLV2BadRequest {
	return &PublicGenerateContentUploadURLV2BadRequest{}
}

/*PublicGenerateContentUploadURLV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type PublicGenerateContentUploadURLV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGenerateContentUploadURLV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] publicGenerateContentUploadUrlV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGenerateContentUploadURLV2BadRequest) ToJSONString() string {
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

func (o *PublicGenerateContentUploadURLV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateContentUploadURLV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateContentUploadURLV2Unauthorized creates a PublicGenerateContentUploadURLV2Unauthorized with default headers values
func NewPublicGenerateContentUploadURLV2Unauthorized() *PublicGenerateContentUploadURLV2Unauthorized {
	return &PublicGenerateContentUploadURLV2Unauthorized{}
}

/*PublicGenerateContentUploadURLV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGenerateContentUploadURLV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGenerateContentUploadURLV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] publicGenerateContentUploadUrlV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGenerateContentUploadURLV2Unauthorized) ToJSONString() string {
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

func (o *PublicGenerateContentUploadURLV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateContentUploadURLV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateContentUploadURLV2Forbidden creates a PublicGenerateContentUploadURLV2Forbidden with default headers values
func NewPublicGenerateContentUploadURLV2Forbidden() *PublicGenerateContentUploadURLV2Forbidden {
	return &PublicGenerateContentUploadURLV2Forbidden{}
}

/*PublicGenerateContentUploadURLV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr></table>
*/
type PublicGenerateContentUploadURLV2Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGenerateContentUploadURLV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] publicGenerateContentUploadUrlV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGenerateContentUploadURLV2Forbidden) ToJSONString() string {
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

func (o *PublicGenerateContentUploadURLV2Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateContentUploadURLV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateContentUploadURLV2NotFound creates a PublicGenerateContentUploadURLV2NotFound with default headers values
func NewPublicGenerateContentUploadURLV2NotFound() *PublicGenerateContentUploadURLV2NotFound {
	return &PublicGenerateContentUploadURLV2NotFound{}
}

/*PublicGenerateContentUploadURLV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type PublicGenerateContentUploadURLV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGenerateContentUploadURLV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] publicGenerateContentUploadUrlV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGenerateContentUploadURLV2NotFound) ToJSONString() string {
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

func (o *PublicGenerateContentUploadURLV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateContentUploadURLV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGenerateContentUploadURLV2InternalServerError creates a PublicGenerateContentUploadURLV2InternalServerError with default headers values
func NewPublicGenerateContentUploadURLV2InternalServerError() *PublicGenerateContentUploadURLV2InternalServerError {
	return &PublicGenerateContentUploadURLV2InternalServerError{}
}

/*PublicGenerateContentUploadURLV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type PublicGenerateContentUploadURLV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicGenerateContentUploadURLV2InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}/uploadUrl][%d] publicGenerateContentUploadUrlV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGenerateContentUploadURLV2InternalServerError) ToJSONString() string {
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

func (o *PublicGenerateContentUploadURLV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGenerateContentUploadURLV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
