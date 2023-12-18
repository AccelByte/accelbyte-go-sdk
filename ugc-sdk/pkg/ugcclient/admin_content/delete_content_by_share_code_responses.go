// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// DeleteContentByShareCodeReader is a Reader for the DeleteContentByShareCode structure.
type DeleteContentByShareCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteContentByShareCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteContentByShareCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteContentByShareCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteContentByShareCodeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteContentByShareCodeInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteContentByShareCodeNoContent creates a DeleteContentByShareCodeNoContent with default headers values
func NewDeleteContentByShareCodeNoContent() *DeleteContentByShareCodeNoContent {
	return &DeleteContentByShareCodeNoContent{}
}

/*DeleteContentByShareCodeNoContent handles this case with default header values.

  Delete content by share code
*/
type DeleteContentByShareCodeNoContent struct {
}

func (o *DeleteContentByShareCodeNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] deleteContentByShareCodeNoContent ", 204)
}

func (o *DeleteContentByShareCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteContentByShareCodeUnauthorized creates a DeleteContentByShareCodeUnauthorized with default headers values
func NewDeleteContentByShareCodeUnauthorized() *DeleteContentByShareCodeUnauthorized {
	return &DeleteContentByShareCodeUnauthorized{}
}

/*DeleteContentByShareCodeUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteContentByShareCodeUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentByShareCodeUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] deleteContentByShareCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteContentByShareCodeUnauthorized) ToJSONString() string {
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

func (o *DeleteContentByShareCodeUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentByShareCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentByShareCodeNotFound creates a DeleteContentByShareCodeNotFound with default headers values
func NewDeleteContentByShareCodeNotFound() *DeleteContentByShareCodeNotFound {
	return &DeleteContentByShareCodeNotFound{}
}

/*DeleteContentByShareCodeNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772702</td><td>Content not found</td></tr></table>
*/
type DeleteContentByShareCodeNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentByShareCodeNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] deleteContentByShareCodeNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteContentByShareCodeNotFound) ToJSONString() string {
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

func (o *DeleteContentByShareCodeNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentByShareCodeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentByShareCodeInternalServerError creates a DeleteContentByShareCodeInternalServerError with default headers values
func NewDeleteContentByShareCodeInternalServerError() *DeleteContentByShareCodeInternalServerError {
	return &DeleteContentByShareCodeInternalServerError{}
}

/*DeleteContentByShareCodeInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772701</td><td>Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state</td></tr></table>
*/
type DeleteContentByShareCodeInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentByShareCodeInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] deleteContentByShareCodeInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteContentByShareCodeInternalServerError) ToJSONString() string {
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

func (o *DeleteContentByShareCodeInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentByShareCodeInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
