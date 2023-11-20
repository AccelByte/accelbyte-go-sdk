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

// PublicDeleteContentByShareCodeReader is a Reader for the PublicDeleteContentByShareCode structure.
type PublicDeleteContentByShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeleteContentByShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeleteContentByShareCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeleteContentByShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeleteContentByShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeleteContentByShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeleteContentByShareCodeNoContent creates a PublicDeleteContentByShareCodeNoContent with default headers values
func NewPublicDeleteContentByShareCodeNoContent() *PublicDeleteContentByShareCodeNoContent {
	return &PublicDeleteContentByShareCodeNoContent{}
}

/*PublicDeleteContentByShareCodeNoContent handles this case with default header values.

  No Content
*/
type PublicDeleteContentByShareCodeNoContent struct {
}

func (o *PublicDeleteContentByShareCodeNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeNoContent ", 204)
}

func (o *PublicDeleteContentByShareCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeleteContentByShareCodeUnauthorized creates a PublicDeleteContentByShareCodeUnauthorized with default headers values
func NewPublicDeleteContentByShareCodeUnauthorized() *PublicDeleteContentByShareCodeUnauthorized {
	return &PublicDeleteContentByShareCodeUnauthorized{}
}

/*PublicDeleteContentByShareCodeUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicDeleteContentByShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDeleteContentByShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeleteContentByShareCodeUnauthorized) ToJSONString() string {
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

func (o *PublicDeleteContentByShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeleteContentByShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteContentByShareCodeNotFound creates a PublicDeleteContentByShareCodeNotFound with default headers values
func NewPublicDeleteContentByShareCodeNotFound() *PublicDeleteContentByShareCodeNotFound {
	return &PublicDeleteContentByShareCodeNotFound{}
}

/*PublicDeleteContentByShareCodeNotFound handles this case with default header values.

  Not Found
*/
type PublicDeleteContentByShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDeleteContentByShareCodeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDeleteContentByShareCodeNotFound) ToJSONString() string {
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

func (o *PublicDeleteContentByShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeleteContentByShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteContentByShareCodeInternalServerError creates a PublicDeleteContentByShareCodeInternalServerError with default headers values
func NewPublicDeleteContentByShareCodeInternalServerError() *PublicDeleteContentByShareCodeInternalServerError {
	return &PublicDeleteContentByShareCodeInternalServerError{}
}

/*PublicDeleteContentByShareCodeInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicDeleteContentByShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDeleteContentByShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDeleteContentByShareCodeInternalServerError) ToJSONString() string {
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

func (o *PublicDeleteContentByShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeleteContentByShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
