// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_staging_content

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

// ListUserStagingContentsReader is a Reader for the ListUserStagingContents structure.
type ListUserStagingContentsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListUserStagingContentsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListUserStagingContentsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListUserStagingContentsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListUserStagingContentsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListUserStagingContentsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListUserStagingContentsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListUserStagingContentsOK creates a ListUserStagingContentsOK with default headers values
func NewListUserStagingContentsOK() *ListUserStagingContentsOK {
	return &ListUserStagingContentsOK{}
}

/*ListUserStagingContentsOK handles this case with default header values.

  list user's staging content
*/
type ListUserStagingContentsOK struct {
	Payload *ugcclientmodels.ModelsPaginatedListStagingContentResponse
}

func (o *ListUserStagingContentsOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents][%d] listUserStagingContentsOK  %+v", 200, o.ToJSONString())
}

func (o *ListUserStagingContentsOK) ToJSONString() string {
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

func (o *ListUserStagingContentsOK) GetPayload() *ugcclientmodels.ModelsPaginatedListStagingContentResponse {
	return o.Payload
}

func (o *ListUserStagingContentsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedListStagingContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListUserStagingContentsBadRequest creates a ListUserStagingContentsBadRequest with default headers values
func NewListUserStagingContentsBadRequest() *ListUserStagingContentsBadRequest {
	return &ListUserStagingContentsBadRequest{}
}

/*ListUserStagingContentsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774301</td><td>invalid paging parameter</td></tr></table>
*/
type ListUserStagingContentsBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListUserStagingContentsBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents][%d] listUserStagingContentsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListUserStagingContentsBadRequest) ToJSONString() string {
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

func (o *ListUserStagingContentsBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserStagingContentsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListUserStagingContentsUnauthorized creates a ListUserStagingContentsUnauthorized with default headers values
func NewListUserStagingContentsUnauthorized() *ListUserStagingContentsUnauthorized {
	return &ListUserStagingContentsUnauthorized{}
}

/*ListUserStagingContentsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListUserStagingContentsUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListUserStagingContentsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents][%d] listUserStagingContentsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListUserStagingContentsUnauthorized) ToJSONString() string {
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

func (o *ListUserStagingContentsUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserStagingContentsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListUserStagingContentsForbidden creates a ListUserStagingContentsForbidden with default headers values
func NewListUserStagingContentsForbidden() *ListUserStagingContentsForbidden {
	return &ListUserStagingContentsForbidden{}
}

/*ListUserStagingContentsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ListUserStagingContentsForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListUserStagingContentsForbidden) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents][%d] listUserStagingContentsForbidden  %+v", 403, o.ToJSONString())
}

func (o *ListUserStagingContentsForbidden) ToJSONString() string {
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

func (o *ListUserStagingContentsForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserStagingContentsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListUserStagingContentsInternalServerError creates a ListUserStagingContentsInternalServerError with default headers values
func NewListUserStagingContentsInternalServerError() *ListUserStagingContentsInternalServerError {
	return &ListUserStagingContentsInternalServerError{}
}

/*ListUserStagingContentsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774302</td><td>unable to get staging content</td></tr><tr><td>774303</td><td>unable to generate presigned URL</td></tr></table>
*/
type ListUserStagingContentsInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *ListUserStagingContentsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents][%d] listUserStagingContentsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListUserStagingContentsInternalServerError) ToJSONString() string {
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

func (o *ListUserStagingContentsInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *ListUserStagingContentsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
