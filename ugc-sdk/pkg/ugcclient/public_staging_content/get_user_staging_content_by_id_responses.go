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

// GetUserStagingContentByIDReader is a Reader for the GetUserStagingContentByID structure.
type GetUserStagingContentByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserStagingContentByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserStagingContentByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserStagingContentByIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserStagingContentByIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserStagingContentByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserStagingContentByIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserStagingContentByIDOK creates a GetUserStagingContentByIDOK with default headers values
func NewGetUserStagingContentByIDOK() *GetUserStagingContentByIDOK {
	return &GetUserStagingContentByIDOK{}
}

/*GetUserStagingContentByIDOK handles this case with default header values.

  staging content
*/
type GetUserStagingContentByIDOK struct {
	Payload *ugcclientmodels.ModelsStagingContentResponse
}

func (o *GetUserStagingContentByIDOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] getUserStagingContentByIdOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserStagingContentByIDOK) ToJSONString() string {
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

func (o *GetUserStagingContentByIDOK) GetPayload() *ugcclientmodels.ModelsStagingContentResponse {
	return o.Payload
}

func (o *GetUserStagingContentByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsStagingContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserStagingContentByIDUnauthorized creates a GetUserStagingContentByIDUnauthorized with default headers values
func NewGetUserStagingContentByIDUnauthorized() *GetUserStagingContentByIDUnauthorized {
	return &GetUserStagingContentByIDUnauthorized{}
}

/*GetUserStagingContentByIDUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserStagingContentByIDUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetUserStagingContentByIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] getUserStagingContentByIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserStagingContentByIDUnauthorized) ToJSONString() string {
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

func (o *GetUserStagingContentByIDUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetUserStagingContentByIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStagingContentByIDForbidden creates a GetUserStagingContentByIDForbidden with default headers values
func NewGetUserStagingContentByIDForbidden() *GetUserStagingContentByIDForbidden {
	return &GetUserStagingContentByIDForbidden{}
}

/*GetUserStagingContentByIDForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetUserStagingContentByIDForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetUserStagingContentByIDForbidden) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] getUserStagingContentByIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserStagingContentByIDForbidden) ToJSONString() string {
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

func (o *GetUserStagingContentByIDForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetUserStagingContentByIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStagingContentByIDNotFound creates a GetUserStagingContentByIDNotFound with default headers values
func NewGetUserStagingContentByIDNotFound() *GetUserStagingContentByIDNotFound {
	return &GetUserStagingContentByIDNotFound{}
}

/*GetUserStagingContentByIDNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774401</td><td>staging content not found</td></tr></table>
*/
type GetUserStagingContentByIDNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetUserStagingContentByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] getUserStagingContentByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserStagingContentByIDNotFound) ToJSONString() string {
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

func (o *GetUserStagingContentByIDNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetUserStagingContentByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserStagingContentByIDInternalServerError creates a GetUserStagingContentByIDInternalServerError with default headers values
func NewGetUserStagingContentByIDInternalServerError() *GetUserStagingContentByIDInternalServerError {
	return &GetUserStagingContentByIDInternalServerError{}
}

/*GetUserStagingContentByIDInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774402</td><td>unable to get staging content</td></tr><tr><td>774403</td><td>unable to generate presigned URL</td></tr></table>
*/
type GetUserStagingContentByIDInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetUserStagingContentByIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}][%d] getUserStagingContentByIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserStagingContentByIDInternalServerError) ToJSONString() string {
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

func (o *GetUserStagingContentByIDInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetUserStagingContentByIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
