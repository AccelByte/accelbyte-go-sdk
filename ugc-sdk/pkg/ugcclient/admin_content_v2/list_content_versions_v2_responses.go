// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// ListContentVersionsV2Reader is a Reader for the ListContentVersionsV2 structure.
type ListContentVersionsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListContentVersionsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListContentVersionsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListContentVersionsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewListContentVersionsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListContentVersionsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListContentVersionsV2OK creates a ListContentVersionsV2OK with default headers values
func NewListContentVersionsV2OK() *ListContentVersionsV2OK {
	return &ListContentVersionsV2OK{}
}

/*ListContentVersionsV2OK handles this case with default header values.

  List content's payload verisions
*/
type ListContentVersionsV2OK struct {
	Payload *ugcclientmodels.ModelsListContentVersionsResponse
}

func (o *ListContentVersionsV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsV2OK  %+v", 200, o.ToJSONString())
}

func (o *ListContentVersionsV2OK) ToJSONString() string {
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

func (o *ListContentVersionsV2OK) GetPayload() *ugcclientmodels.ModelsListContentVersionsResponse {
	return o.Payload
}

func (o *ListContentVersionsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListContentVersionsV2Unauthorized creates a ListContentVersionsV2Unauthorized with default headers values
func NewListContentVersionsV2Unauthorized() *ListContentVersionsV2Unauthorized {
	return &ListContentVersionsV2Unauthorized{}
}

/*ListContentVersionsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListContentVersionsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListContentVersionsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListContentVersionsV2Unauthorized) ToJSONString() string {
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

func (o *ListContentVersionsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListContentVersionsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListContentVersionsV2NotFound creates a ListContentVersionsV2NotFound with default headers values
func NewListContentVersionsV2NotFound() *ListContentVersionsV2NotFound {
	return &ListContentVersionsV2NotFound{}
}

/*ListContentVersionsV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774004</td><td>ugc content not found</td></tr></table>
*/
type ListContentVersionsV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListContentVersionsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *ListContentVersionsV2NotFound) ToJSONString() string {
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

func (o *ListContentVersionsV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListContentVersionsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListContentVersionsV2InternalServerError creates a ListContentVersionsV2InternalServerError with default headers values
func NewListContentVersionsV2InternalServerError() *ListContentVersionsV2InternalServerError {
	return &ListContentVersionsV2InternalServerError{}
}

/*ListContentVersionsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774005</td><td>unable to get ugc content</td></tr></table>
*/
type ListContentVersionsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListContentVersionsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/versions][%d] listContentVersionsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListContentVersionsV2InternalServerError) ToJSONString() string {
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

func (o *ListContentVersionsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListContentVersionsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
