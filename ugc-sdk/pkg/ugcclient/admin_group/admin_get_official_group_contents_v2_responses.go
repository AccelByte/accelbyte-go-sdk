// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

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

// AdminGetOfficialGroupContentsV2Reader is a Reader for the AdminGetOfficialGroupContentsV2 structure.
type AdminGetOfficialGroupContentsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetOfficialGroupContentsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetOfficialGroupContentsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetOfficialGroupContentsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetOfficialGroupContentsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetOfficialGroupContentsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetOfficialGroupContentsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetOfficialGroupContentsV2OK creates a AdminGetOfficialGroupContentsV2OK with default headers values
func NewAdminGetOfficialGroupContentsV2OK() *AdminGetOfficialGroupContentsV2OK {
	return &AdminGetOfficialGroupContentsV2OK{}
}

/*AdminGetOfficialGroupContentsV2OK handles this case with default header values.

  Get contents belong to a group
*/
type AdminGetOfficialGroupContentsV2OK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2
}

func (o *AdminGetOfficialGroupContentsV2OK) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] adminGetOfficialGroupContentsV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetOfficialGroupContentsV2OK) ToJSONString() string {
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

func (o *AdminGetOfficialGroupContentsV2OK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminGetOfficialGroupContentsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetOfficialGroupContentsV2BadRequest creates a AdminGetOfficialGroupContentsV2BadRequest with default headers values
func NewAdminGetOfficialGroupContentsV2BadRequest() *AdminGetOfficialGroupContentsV2BadRequest {
	return &AdminGetOfficialGroupContentsV2BadRequest{}
}

/*AdminGetOfficialGroupContentsV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773101</td><td>invalid paging parameter</td></tr></table>
*/
type AdminGetOfficialGroupContentsV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetOfficialGroupContentsV2BadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] adminGetOfficialGroupContentsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetOfficialGroupContentsV2BadRequest) ToJSONString() string {
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

func (o *AdminGetOfficialGroupContentsV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetOfficialGroupContentsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetOfficialGroupContentsV2Unauthorized creates a AdminGetOfficialGroupContentsV2Unauthorized with default headers values
func NewAdminGetOfficialGroupContentsV2Unauthorized() *AdminGetOfficialGroupContentsV2Unauthorized {
	return &AdminGetOfficialGroupContentsV2Unauthorized{}
}

/*AdminGetOfficialGroupContentsV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetOfficialGroupContentsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetOfficialGroupContentsV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] adminGetOfficialGroupContentsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetOfficialGroupContentsV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetOfficialGroupContentsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetOfficialGroupContentsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetOfficialGroupContentsV2NotFound creates a AdminGetOfficialGroupContentsV2NotFound with default headers values
func NewAdminGetOfficialGroupContentsV2NotFound() *AdminGetOfficialGroupContentsV2NotFound {
	return &AdminGetOfficialGroupContentsV2NotFound{}
}

/*AdminGetOfficialGroupContentsV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773103</td><td>No group content was found</td></tr></table>
*/
type AdminGetOfficialGroupContentsV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetOfficialGroupContentsV2NotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] adminGetOfficialGroupContentsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetOfficialGroupContentsV2NotFound) ToJSONString() string {
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

func (o *AdminGetOfficialGroupContentsV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetOfficialGroupContentsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetOfficialGroupContentsV2InternalServerError creates a AdminGetOfficialGroupContentsV2InternalServerError with default headers values
func NewAdminGetOfficialGroupContentsV2InternalServerError() *AdminGetOfficialGroupContentsV2InternalServerError {
	return &AdminGetOfficialGroupContentsV2InternalServerError{}
}

/*AdminGetOfficialGroupContentsV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>773102</td><td>Unable to get ugc content: database error</td></tr><tr><td>770901</td><td>Unable to get ugc content: database error/Unable to get creator</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>770903</td><td>Failed generate download URL</td></tr></table>
*/
type AdminGetOfficialGroupContentsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminGetOfficialGroupContentsV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents][%d] adminGetOfficialGroupContentsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetOfficialGroupContentsV2InternalServerError) ToJSONString() string {
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

func (o *AdminGetOfficialGroupContentsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetOfficialGroupContentsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
