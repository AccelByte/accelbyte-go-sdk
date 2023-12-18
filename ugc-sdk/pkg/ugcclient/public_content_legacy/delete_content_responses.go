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

// DeleteContentReader is a Reader for the DeleteContent structure.
type DeleteContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteContentNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteContentNoContent creates a DeleteContentNoContent with default headers values
func NewDeleteContentNoContent() *DeleteContentNoContent {
	return &DeleteContentNoContent{}
}

/*DeleteContentNoContent handles this case with default header values.

  Content deleted
*/
type DeleteContentNoContent struct {
}

func (o *DeleteContentNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] deleteContentNoContent ", 204)
}

func (o *DeleteContentNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteContentUnauthorized creates a DeleteContentUnauthorized with default headers values
func NewDeleteContentUnauthorized() *DeleteContentUnauthorized {
	return &DeleteContentUnauthorized{}
}

/*DeleteContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] deleteContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteContentUnauthorized) ToJSONString() string {
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

func (o *DeleteContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentNotFound creates a DeleteContentNotFound with default headers values
func NewDeleteContentNotFound() *DeleteContentNotFound {
	return &DeleteContentNotFound{}
}

/*DeleteContentNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772702</td><td>Content not found</td></tr></table>
*/
type DeleteContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] deleteContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteContentNotFound) ToJSONString() string {
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

func (o *DeleteContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteContentInternalServerError creates a DeleteContentInternalServerError with default headers values
func NewDeleteContentInternalServerError() *DeleteContentInternalServerError {
	return &DeleteContentInternalServerError{}
}

/*DeleteContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772701</td><td>Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state</td></tr></table>
*/
type DeleteContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *DeleteContentInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}][%d] deleteContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteContentInternalServerError) ToJSONString() string {
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

func (o *DeleteContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
