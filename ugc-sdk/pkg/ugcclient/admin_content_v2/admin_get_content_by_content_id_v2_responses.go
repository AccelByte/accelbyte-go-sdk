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

// AdminGetContentByContentIDV2Reader is a Reader for the AdminGetContentByContentIDV2 structure.
type AdminGetContentByContentIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentByContentIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentByContentIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentByContentIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetContentByContentIDV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentByContentIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentByContentIDV2OK creates a AdminGetContentByContentIDV2OK with default headers values
func NewAdminGetContentByContentIDV2OK() *AdminGetContentByContentIDV2OK {
	return &AdminGetContentByContentIDV2OK{}
}

/*AdminGetContentByContentIDV2OK handles this case with default header values.

  Get content by content ID
*/
type AdminGetContentByContentIDV2OK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *AdminGetContentByContentIDV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}][%d] adminGetContentByContentIdV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentByContentIDV2OK) ToJSONString() string {
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

func (o *AdminGetContentByContentIDV2OK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetContentByContentIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetContentByContentIDV2Unauthorized creates a AdminGetContentByContentIDV2Unauthorized with default headers values
func NewAdminGetContentByContentIDV2Unauthorized() *AdminGetContentByContentIDV2Unauthorized {
	return &AdminGetContentByContentIDV2Unauthorized{}
}

/*AdminGetContentByContentIDV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetContentByContentIDV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByContentIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}][%d] adminGetContentByContentIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentByContentIDV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetContentByContentIDV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByContentIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetContentByContentIDV2NotFound creates a AdminGetContentByContentIDV2NotFound with default headers values
func NewAdminGetContentByContentIDV2NotFound() *AdminGetContentByContentIDV2NotFound {
	return &AdminGetContentByContentIDV2NotFound{}
}

/*AdminGetContentByContentIDV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773200</td><td>ugc content not found</td></tr></table>
*/
type AdminGetContentByContentIDV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByContentIDV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}][%d] adminGetContentByContentIdV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetContentByContentIDV2NotFound) ToJSONString() string {
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

func (o *AdminGetContentByContentIDV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByContentIDV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetContentByContentIDV2InternalServerError creates a AdminGetContentByContentIDV2InternalServerError with default headers values
func NewAdminGetContentByContentIDV2InternalServerError() *AdminGetContentByContentIDV2InternalServerError {
	return &AdminGetContentByContentIDV2InternalServerError{}
}

/*AdminGetContentByContentIDV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773201</td><td>Unable to get ugc content/Unable to get creator/Unable to get included group</td></tr><tr><td>770301</td><td>Unable to get ugc content/Unable to get creator</td></tr><tr><td>773203</td><td>Failed generate download URL</td></tr></table>
*/
type AdminGetContentByContentIDV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByContentIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}][%d] adminGetContentByContentIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentByContentIDV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetContentByContentIDV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByContentIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
