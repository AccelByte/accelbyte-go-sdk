// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

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

// AdminDeleteAllUserContentsReader is a Reader for the AdminDeleteAllUserContents structure.
type AdminDeleteAllUserContentsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAllUserContentsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAllUserContentsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAllUserContentsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAllUserContentsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAllUserContentsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAllUserContentsNoContent creates a AdminDeleteAllUserContentsNoContent with default headers values
func NewAdminDeleteAllUserContentsNoContent() *AdminDeleteAllUserContentsNoContent {
	return &AdminDeleteAllUserContentsNoContent{}
}

/*AdminDeleteAllUserContentsNoContent handles this case with default header values.

  Users content's deleted
*/
type AdminDeleteAllUserContentsNoContent struct {
}

func (o *AdminDeleteAllUserContentsNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminDeleteAllUserContentsNoContent ", 204)
}

func (o *AdminDeleteAllUserContentsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAllUserContentsUnauthorized creates a AdminDeleteAllUserContentsUnauthorized with default headers values
func NewAdminDeleteAllUserContentsUnauthorized() *AdminDeleteAllUserContentsUnauthorized {
	return &AdminDeleteAllUserContentsUnauthorized{}
}

/*AdminDeleteAllUserContentsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteAllUserContentsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserContentsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminDeleteAllUserContentsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAllUserContentsUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteAllUserContentsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserContentsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteAllUserContentsNotFound creates a AdminDeleteAllUserContentsNotFound with default headers values
func NewAdminDeleteAllUserContentsNotFound() *AdminDeleteAllUserContentsNotFound {
	return &AdminDeleteAllUserContentsNotFound{}
}

/*AdminDeleteAllUserContentsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773402</td><td>Content not found</td></tr></table>
*/
type AdminDeleteAllUserContentsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserContentsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminDeleteAllUserContentsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAllUserContentsNotFound) ToJSONString() string {
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

func (o *AdminDeleteAllUserContentsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserContentsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteAllUserContentsInternalServerError creates a AdminDeleteAllUserContentsInternalServerError with default headers values
func NewAdminDeleteAllUserContentsInternalServerError() *AdminDeleteAllUserContentsInternalServerError {
	return &AdminDeleteAllUserContentsInternalServerError{}
}

/*AdminDeleteAllUserContentsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773401</td><td>Unable to get all user content</td></tr></table>
*/
type AdminDeleteAllUserContentsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserContentsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents][%d] adminDeleteAllUserContentsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAllUserContentsInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAllUserContentsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserContentsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
