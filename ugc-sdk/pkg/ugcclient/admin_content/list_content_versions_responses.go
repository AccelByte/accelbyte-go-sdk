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

// ListContentVersionsReader is a Reader for the ListContentVersions structure.
type ListContentVersionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListContentVersionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListContentVersionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListContentVersionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListContentVersionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListContentVersionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListContentVersionsOK creates a ListContentVersionsOK with default headers values
func NewListContentVersionsOK() *ListContentVersionsOK {
	return &ListContentVersionsOK{}
}

/*ListContentVersionsOK handles this case with default header values.

  list content's payload versions
*/
type ListContentVersionsOK struct {
	Payload *ugcclientmodels.ModelsListContentVersionsResponse
}

func (o *ListContentVersionsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsOK  %+v", 200, o.ToJSONString())
}

func (o *ListContentVersionsOK) ToJSONString() string {
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

func (o *ListContentVersionsOK) GetPayload() *ugcclientmodels.ModelsListContentVersionsResponse {
	return o.Payload
}

func (o *ListContentVersionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsListContentVersionsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListContentVersionsUnauthorized creates a ListContentVersionsUnauthorized with default headers values
func NewListContentVersionsUnauthorized() *ListContentVersionsUnauthorized {
	return &ListContentVersionsUnauthorized{}
}

/*ListContentVersionsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListContentVersionsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListContentVersionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListContentVersionsUnauthorized) ToJSONString() string {
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

func (o *ListContentVersionsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListContentVersionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListContentVersionsNotFound creates a ListContentVersionsNotFound with default headers values
func NewListContentVersionsNotFound() *ListContentVersionsNotFound {
	return &ListContentVersionsNotFound{}
}

/*ListContentVersionsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774004</td><td>ugc content not found</td></tr></table>
*/
type ListContentVersionsNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListContentVersionsNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *ListContentVersionsNotFound) ToJSONString() string {
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

func (o *ListContentVersionsNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListContentVersionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListContentVersionsInternalServerError creates a ListContentVersionsInternalServerError with default headers values
func NewListContentVersionsInternalServerError() *ListContentVersionsInternalServerError {
	return &ListContentVersionsInternalServerError{}
}

/*ListContentVersionsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774005</td><td>unable to get ugc content</td></tr></table>
*/
type ListContentVersionsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListContentVersionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListContentVersionsInternalServerError) ToJSONString() string {
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

func (o *ListContentVersionsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListContentVersionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
