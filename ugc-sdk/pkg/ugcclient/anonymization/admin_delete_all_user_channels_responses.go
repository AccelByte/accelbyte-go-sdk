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

// AdminDeleteAllUserChannelsReader is a Reader for the AdminDeleteAllUserChannels structure.
type AdminDeleteAllUserChannelsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteAllUserChannelsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteAllUserChannelsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteAllUserChannelsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteAllUserChannelsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteAllUserChannelsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteAllUserChannelsNoContent creates a AdminDeleteAllUserChannelsNoContent with default headers values
func NewAdminDeleteAllUserChannelsNoContent() *AdminDeleteAllUserChannelsNoContent {
	return &AdminDeleteAllUserChannelsNoContent{}
}

/*AdminDeleteAllUserChannelsNoContent handles this case with default header values.

  Channel deleted
*/
type AdminDeleteAllUserChannelsNoContent struct {
}

func (o *AdminDeleteAllUserChannelsNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminDeleteAllUserChannelsNoContent ", 204)
}

func (o *AdminDeleteAllUserChannelsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteAllUserChannelsUnauthorized creates a AdminDeleteAllUserChannelsUnauthorized with default headers values
func NewAdminDeleteAllUserChannelsUnauthorized() *AdminDeleteAllUserChannelsUnauthorized {
	return &AdminDeleteAllUserChannelsUnauthorized{}
}

/*AdminDeleteAllUserChannelsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteAllUserChannelsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserChannelsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminDeleteAllUserChannelsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteAllUserChannelsUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteAllUserChannelsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserChannelsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteAllUserChannelsNotFound creates a AdminDeleteAllUserChannelsNotFound with default headers values
func NewAdminDeleteAllUserChannelsNotFound() *AdminDeleteAllUserChannelsNotFound {
	return &AdminDeleteAllUserChannelsNotFound{}
}

/*AdminDeleteAllUserChannelsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773502</td><td>Channel not found</td></tr></table>
*/
type AdminDeleteAllUserChannelsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserChannelsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminDeleteAllUserChannelsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteAllUserChannelsNotFound) ToJSONString() string {
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

func (o *AdminDeleteAllUserChannelsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserChannelsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteAllUserChannelsInternalServerError creates a AdminDeleteAllUserChannelsInternalServerError with default headers values
func NewAdminDeleteAllUserChannelsInternalServerError() *AdminDeleteAllUserChannelsInternalServerError {
	return &AdminDeleteAllUserChannelsInternalServerError{}
}

/*AdminDeleteAllUserChannelsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773501</td><td>Unable to delete channel</td></tr></table>
*/
type AdminDeleteAllUserChannelsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteAllUserChannelsInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels][%d] adminDeleteAllUserChannelsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteAllUserChannelsInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteAllUserChannelsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteAllUserChannelsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
