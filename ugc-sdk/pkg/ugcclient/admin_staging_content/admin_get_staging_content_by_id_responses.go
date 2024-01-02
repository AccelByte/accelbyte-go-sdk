// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_staging_content

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

// AdminGetStagingContentByIDReader is a Reader for the AdminGetStagingContentByID structure.
type AdminGetStagingContentByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetStagingContentByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetStagingContentByIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetStagingContentByIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetStagingContentByIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetStagingContentByIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetStagingContentByIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetStagingContentByIDOK creates a AdminGetStagingContentByIDOK with default headers values
func NewAdminGetStagingContentByIDOK() *AdminGetStagingContentByIDOK {
	return &AdminGetStagingContentByIDOK{}
}

/*AdminGetStagingContentByIDOK handles this case with default header values.

  staging content
*/
type AdminGetStagingContentByIDOK struct {
	Payload *ugcclientmodels.ModelsStagingContentResponse
}

func (o *AdminGetStagingContentByIDOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}][%d] adminGetStagingContentByIdOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetStagingContentByIDOK) ToJSONString() string {
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

func (o *AdminGetStagingContentByIDOK) GetPayload() *ugcclientmodels.ModelsStagingContentResponse {
	return o.Payload
}

func (o *AdminGetStagingContentByIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetStagingContentByIDUnauthorized creates a AdminGetStagingContentByIDUnauthorized with default headers values
func NewAdminGetStagingContentByIDUnauthorized() *AdminGetStagingContentByIDUnauthorized {
	return &AdminGetStagingContentByIDUnauthorized{}
}

/*AdminGetStagingContentByIDUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetStagingContentByIDUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetStagingContentByIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}][%d] adminGetStagingContentByIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetStagingContentByIDUnauthorized) ToJSONString() string {
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

func (o *AdminGetStagingContentByIDUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStagingContentByIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetStagingContentByIDForbidden creates a AdminGetStagingContentByIDForbidden with default headers values
func NewAdminGetStagingContentByIDForbidden() *AdminGetStagingContentByIDForbidden {
	return &AdminGetStagingContentByIDForbidden{}
}

/*AdminGetStagingContentByIDForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminGetStagingContentByIDForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetStagingContentByIDForbidden) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}][%d] adminGetStagingContentByIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetStagingContentByIDForbidden) ToJSONString() string {
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

func (o *AdminGetStagingContentByIDForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStagingContentByIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetStagingContentByIDNotFound creates a AdminGetStagingContentByIDNotFound with default headers values
func NewAdminGetStagingContentByIDNotFound() *AdminGetStagingContentByIDNotFound {
	return &AdminGetStagingContentByIDNotFound{}
}

/*AdminGetStagingContentByIDNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774401</td><td>staging content not found</td></tr></table>
*/
type AdminGetStagingContentByIDNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetStagingContentByIDNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}][%d] adminGetStagingContentByIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetStagingContentByIDNotFound) ToJSONString() string {
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

func (o *AdminGetStagingContentByIDNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStagingContentByIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetStagingContentByIDInternalServerError creates a AdminGetStagingContentByIDInternalServerError with default headers values
func NewAdminGetStagingContentByIDInternalServerError() *AdminGetStagingContentByIDInternalServerError {
	return &AdminGetStagingContentByIDInternalServerError{}
}

/*AdminGetStagingContentByIDInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>774402</td><td>unable to get staging content</td></tr><tr><td>774403</td><td>unable to generate presigned URL</td></tr></table>
*/
type AdminGetStagingContentByIDInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetStagingContentByIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}][%d] adminGetStagingContentByIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetStagingContentByIDInternalServerError) ToJSONString() string {
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

func (o *AdminGetStagingContentByIDInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetStagingContentByIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
