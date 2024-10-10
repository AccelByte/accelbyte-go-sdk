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

// AdminUploadContentS3Reader is a Reader for the AdminUploadContentS3 structure.
type AdminUploadContentS3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUploadContentS3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminUploadContentS3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUploadContentS3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUploadContentS3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUploadContentS3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminUploadContentS3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUploadContentS3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3 returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUploadContentS3Created creates a AdminUploadContentS3Created with default headers values
func NewAdminUploadContentS3Created() *AdminUploadContentS3Created {
	return &AdminUploadContentS3Created{}
}

/*AdminUploadContentS3Created handles this case with default header values.

  Content Uploaded to S3 bucket
*/
type AdminUploadContentS3Created struct {
	Payload *ugcclientmodels.ModelsCreateContentResponse
}

func (o *AdminUploadContentS3Created) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3][%d] adminUploadContentS3Created  %+v", 201, o.ToJSONString())
}

func (o *AdminUploadContentS3Created) ToJSONString() string {
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

func (o *AdminUploadContentS3Created) GetPayload() *ugcclientmodels.ModelsCreateContentResponse {
	return o.Payload
}

func (o *AdminUploadContentS3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadContentS3BadRequest creates a AdminUploadContentS3BadRequest with default headers values
func NewAdminUploadContentS3BadRequest() *AdminUploadContentS3BadRequest {
	return &AdminUploadContentS3BadRequest{}
}

/*AdminUploadContentS3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770100</td><td>Malformed request/Invalid request body/channel do not exist</td></tr><tr><td>770107</td><td>Unable to update ugc content: invalid shareCode format</td></tr></table>
*/
type AdminUploadContentS3BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentS3BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3][%d] adminUploadContentS3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUploadContentS3BadRequest) ToJSONString() string {
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

func (o *AdminUploadContentS3BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentS3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentS3Unauthorized creates a AdminUploadContentS3Unauthorized with default headers values
func NewAdminUploadContentS3Unauthorized() *AdminUploadContentS3Unauthorized {
	return &AdminUploadContentS3Unauthorized{}
}

/*AdminUploadContentS3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUploadContentS3Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentS3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3][%d] adminUploadContentS3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUploadContentS3Unauthorized) ToJSONString() string {
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

func (o *AdminUploadContentS3Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentS3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentS3Forbidden creates a AdminUploadContentS3Forbidden with default headers values
func NewAdminUploadContentS3Forbidden() *AdminUploadContentS3Forbidden {
	return &AdminUploadContentS3Forbidden{}
}

/*AdminUploadContentS3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770104</td><td>User has been banned to create content</td></tr></table>
*/
type AdminUploadContentS3Forbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentS3Forbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3][%d] adminUploadContentS3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUploadContentS3Forbidden) ToJSONString() string {
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

func (o *AdminUploadContentS3Forbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentS3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentS3Conflict creates a AdminUploadContentS3Conflict with default headers values
func NewAdminUploadContentS3Conflict() *AdminUploadContentS3Conflict {
	return &AdminUploadContentS3Conflict{}
}

/*AdminUploadContentS3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770103</td><td>Unable to save ugc content: shareCode exceed the limit</td></tr></table>
*/
type AdminUploadContentS3Conflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentS3Conflict) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3][%d] adminUploadContentS3Conflict  %+v", 409, o.ToJSONString())
}

func (o *AdminUploadContentS3Conflict) ToJSONString() string {
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

func (o *AdminUploadContentS3Conflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentS3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUploadContentS3InternalServerError creates a AdminUploadContentS3InternalServerError with default headers values
func NewAdminUploadContentS3InternalServerError() *AdminUploadContentS3InternalServerError {
	return &AdminUploadContentS3InternalServerError{}
}

/*AdminUploadContentS3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770102</td><td>Unable to check user ban status/Unable to save ugc content: unable to get channel</td></tr><tr><td>770103</td><td>Unable to save ugc content: shareCode exceed the limit</td></tr></table>
*/
type AdminUploadContentS3InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUploadContentS3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3][%d] adminUploadContentS3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUploadContentS3InternalServerError) ToJSONString() string {
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

func (o *AdminUploadContentS3InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadContentS3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
