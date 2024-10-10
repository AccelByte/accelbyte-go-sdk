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

// PublicUpdateContentByShareCodeReader is a Reader for the PublicUpdateContentByShareCode structure.
type PublicUpdateContentByShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateContentByShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateContentByShareCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateContentByShareCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateContentByShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicUpdateContentByShareCodeForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateContentByShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpdateContentByShareCodeConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateContentByShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateContentByShareCodeOK creates a PublicUpdateContentByShareCodeOK with default headers values
func NewPublicUpdateContentByShareCodeOK() *PublicUpdateContentByShareCodeOK {
	return &PublicUpdateContentByShareCodeOK{}
}

/*PublicUpdateContentByShareCodeOK handles this case with default header values.

  Content updated at s3
*/
type PublicUpdateContentByShareCodeOK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *PublicUpdateContentByShareCodeOK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeOK) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeOK) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateContentByShareCodeBadRequest creates a PublicUpdateContentByShareCodeBadRequest with default headers values
func NewPublicUpdateContentByShareCodeBadRequest() *PublicUpdateContentByShareCodeBadRequest {
	return &PublicUpdateContentByShareCodeBadRequest{}
}

/*PublicUpdateContentByShareCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772601</td><td>Malformed request</td></tr></table>
*/
type PublicUpdateContentByShareCodeBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeBadRequest) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateContentByShareCodeUnauthorized creates a PublicUpdateContentByShareCodeUnauthorized with default headers values
func NewPublicUpdateContentByShareCodeUnauthorized() *PublicUpdateContentByShareCodeUnauthorized {
	return &PublicUpdateContentByShareCodeUnauthorized{}
}

/*PublicUpdateContentByShareCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicUpdateContentByShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeUnauthorized) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateContentByShareCodeForbidden creates a PublicUpdateContentByShareCodeForbidden with default headers values
func NewPublicUpdateContentByShareCodeForbidden() *PublicUpdateContentByShareCodeForbidden {
	return &PublicUpdateContentByShareCodeForbidden{}
}

/*PublicUpdateContentByShareCodeForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772604</td><td>User has been banned to update content</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicUpdateContentByShareCodeForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeForbidden) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeForbidden) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateContentByShareCodeNotFound creates a PublicUpdateContentByShareCodeNotFound with default headers values
func NewPublicUpdateContentByShareCodeNotFound() *PublicUpdateContentByShareCodeNotFound {
	return &PublicUpdateContentByShareCodeNotFound{}
}

/*PublicUpdateContentByShareCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772603</td><td>Content not found</td></tr></table>
*/
type PublicUpdateContentByShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeNotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeNotFound) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateContentByShareCodeConflict creates a PublicUpdateContentByShareCodeConflict with default headers values
func NewPublicUpdateContentByShareCodeConflict() *PublicUpdateContentByShareCodeConflict {
	return &PublicUpdateContentByShareCodeConflict{}
}

/*PublicUpdateContentByShareCodeConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772606</td><td>Share code already used</td></tr></table>
*/
type PublicUpdateContentByShareCodeConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeConflict) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeConflict) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicUpdateContentByShareCodeInternalServerError creates a PublicUpdateContentByShareCodeInternalServerError with default headers values
func NewPublicUpdateContentByShareCodeInternalServerError() *PublicUpdateContentByShareCodeInternalServerError {
	return &PublicUpdateContentByShareCodeInternalServerError{}
}

/*PublicUpdateContentByShareCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772602</td><td>Unable to check user ban status/Unable to get updated ugc content</td></tr><tr><td>772605</td><td>Unable to save ugc content: failed generate upload URL</td></tr></table>
*/
type PublicUpdateContentByShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeInternalServerError) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
