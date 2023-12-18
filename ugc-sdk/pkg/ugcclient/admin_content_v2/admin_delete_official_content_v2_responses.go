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

// AdminDeleteOfficialContentV2Reader is a Reader for the AdminDeleteOfficialContentV2 structure.
type AdminDeleteOfficialContentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteOfficialContentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteOfficialContentV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteOfficialContentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeleteOfficialContentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteOfficialContentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteOfficialContentV2NoContent creates a AdminDeleteOfficialContentV2NoContent with default headers values
func NewAdminDeleteOfficialContentV2NoContent() *AdminDeleteOfficialContentV2NoContent {
	return &AdminDeleteOfficialContentV2NoContent{}
}

/*AdminDeleteOfficialContentV2NoContent handles this case with default header values.

  Official content deleted
*/
type AdminDeleteOfficialContentV2NoContent struct {
}

func (o *AdminDeleteOfficialContentV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminDeleteOfficialContentV2NoContent ", 204)
}

func (o *AdminDeleteOfficialContentV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeleteOfficialContentV2Unauthorized creates a AdminDeleteOfficialContentV2Unauthorized with default headers values
func NewAdminDeleteOfficialContentV2Unauthorized() *AdminDeleteOfficialContentV2Unauthorized {
	return &AdminDeleteOfficialContentV2Unauthorized{}
}

/*AdminDeleteOfficialContentV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminDeleteOfficialContentV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteOfficialContentV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminDeleteOfficialContentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteOfficialContentV2Unauthorized) ToJSONString() string {
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

func (o *AdminDeleteOfficialContentV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteOfficialContentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteOfficialContentV2NotFound creates a AdminDeleteOfficialContentV2NotFound with default headers values
func NewAdminDeleteOfficialContentV2NotFound() *AdminDeleteOfficialContentV2NotFound {
	return &AdminDeleteOfficialContentV2NotFound{}
}

/*AdminDeleteOfficialContentV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772702</td><td>Content not found</td></tr></table>
*/
type AdminDeleteOfficialContentV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteOfficialContentV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminDeleteOfficialContentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeleteOfficialContentV2NotFound) ToJSONString() string {
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

func (o *AdminDeleteOfficialContentV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteOfficialContentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteOfficialContentV2InternalServerError creates a AdminDeleteOfficialContentV2InternalServerError with default headers values
func NewAdminDeleteOfficialContentV2InternalServerError() *AdminDeleteOfficialContentV2InternalServerError {
	return &AdminDeleteOfficialContentV2InternalServerError{}
}

/*AdminDeleteOfficialContentV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772701</td><td>Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state</td></tr></table>
*/
type AdminDeleteOfficialContentV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminDeleteOfficialContentV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}][%d] adminDeleteOfficialContentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteOfficialContentV2InternalServerError) ToJSONString() string {
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

func (o *AdminDeleteOfficialContentV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteOfficialContentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
