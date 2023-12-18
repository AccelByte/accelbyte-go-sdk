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

// AdminGetContentByShareCodeV2Reader is a Reader for the AdminGetContentByShareCodeV2 structure.
type AdminGetContentByShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetContentByShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetContentByShareCodeV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetContentByShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetContentByShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetContentByShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetContentByShareCodeV2OK creates a AdminGetContentByShareCodeV2OK with default headers values
func NewAdminGetContentByShareCodeV2OK() *AdminGetContentByShareCodeV2OK {
	return &AdminGetContentByShareCodeV2OK{}
}

/*AdminGetContentByShareCodeV2OK handles this case with default header values.

  Get content by sharecode
*/
type AdminGetContentByShareCodeV2OK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *AdminGetContentByShareCodeV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetContentByShareCodeV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetContentByShareCodeV2OK) ToJSONString() string {
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

func (o *AdminGetContentByShareCodeV2OK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetContentByShareCodeV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentByShareCodeV2Unauthorized creates a AdminGetContentByShareCodeV2Unauthorized with default headers values
func NewAdminGetContentByShareCodeV2Unauthorized() *AdminGetContentByShareCodeV2Unauthorized {
	return &AdminGetContentByShareCodeV2Unauthorized{}
}

/*AdminGetContentByShareCodeV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetContentByShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetContentByShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetContentByShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetContentByShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentByShareCodeV2NotFound creates a AdminGetContentByShareCodeV2NotFound with default headers values
func NewAdminGetContentByShareCodeV2NotFound() *AdminGetContentByShareCodeV2NotFound {
	return &AdminGetContentByShareCodeV2NotFound{}
}

/*AdminGetContentByShareCodeV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770300</td><td>ugc content not found</td></tr></table>
*/
type AdminGetContentByShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetContentByShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetContentByShareCodeV2NotFound) ToJSONString() string {
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

func (o *AdminGetContentByShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetContentByShareCodeV2InternalServerError creates a AdminGetContentByShareCodeV2InternalServerError with default headers values
func NewAdminGetContentByShareCodeV2InternalServerError() *AdminGetContentByShareCodeV2InternalServerError {
	return &AdminGetContentByShareCodeV2InternalServerError{}
}

/*AdminGetContentByShareCodeV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770301</td><td>Unable to get ugc content/Unable to get creator</td></tr><tr><td>773201</td><td>Unable to get ugc content/Unable to get creator/Unable to get included group</td></tr><tr><td>770303</td><td>Failed generate download URL</td></tr></table>
*/
type AdminGetContentByShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetContentByShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}][%d] adminGetContentByShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetContentByShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetContentByShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetContentByShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
