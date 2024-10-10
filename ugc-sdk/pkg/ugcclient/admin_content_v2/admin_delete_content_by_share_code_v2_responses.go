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

// AdminDeleteContentByShareCodeV2Reader is a Reader for the AdminDeleteContentByShareCodeV2 structure.
type AdminDeleteContentByShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteContentByShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteContentByShareCodeV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteContentByShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteContentByShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteContentByShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteContentByShareCodeV2NoContent creates a AdminDeleteContentByShareCodeV2NoContent with default headers values
func NewAdminDeleteContentByShareCodeV2NoContent() *AdminDeleteContentByShareCodeV2NoContent {
	return &AdminDeleteContentByShareCodeV2NoContent{}
}

/*AdminDeleteContentByShareCodeV2NoContent handles this case with default header values.

  content deleted
*/
type AdminDeleteContentByShareCodeV2NoContent struct {
}

func (o *AdminDeleteContentByShareCodeV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] adminDeleteContentByShareCodeV2NoContent ", 204)
}

func (o *AdminDeleteContentByShareCodeV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteContentByShareCodeV2Unauthorized creates a AdminDeleteContentByShareCodeV2Unauthorized with default headers values
func NewAdminDeleteContentByShareCodeV2Unauthorized() *AdminDeleteContentByShareCodeV2Unauthorized {
	return &AdminDeleteContentByShareCodeV2Unauthorized{}
}

/*AdminDeleteContentByShareCodeV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteContentByShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentByShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] adminDeleteContentByShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteContentByShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteContentByShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentByShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteContentByShareCodeV2NotFound creates a AdminDeleteContentByShareCodeV2NotFound with default headers values
func NewAdminDeleteContentByShareCodeV2NotFound() *AdminDeleteContentByShareCodeV2NotFound {
	return &AdminDeleteContentByShareCodeV2NotFound{}
}

/*AdminDeleteContentByShareCodeV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772702</td><td>Content not found</td></tr></table>
*/
type AdminDeleteContentByShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentByShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] adminDeleteContentByShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteContentByShareCodeV2NotFound) ToJSONString() string {
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

func (o *AdminDeleteContentByShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentByShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteContentByShareCodeV2InternalServerError creates a AdminDeleteContentByShareCodeV2InternalServerError with default headers values
func NewAdminDeleteContentByShareCodeV2InternalServerError() *AdminDeleteContentByShareCodeV2InternalServerError {
	return &AdminDeleteContentByShareCodeV2InternalServerError{}
}

/*AdminDeleteContentByShareCodeV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772701</td><td>Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state</td></tr></table>
*/
type AdminDeleteContentByShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteContentByShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] adminDeleteContentByShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteContentByShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteContentByShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteContentByShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
