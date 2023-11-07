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

// AdminUpdateOfficialContentFileLocationReader is a Reader for the AdminUpdateOfficialContentFileLocation structure.
type AdminUpdateOfficialContentFileLocationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateOfficialContentFileLocationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateOfficialContentFileLocationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateOfficialContentFileLocationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateOfficialContentFileLocationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateOfficialContentFileLocationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateOfficialContentFileLocationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateOfficialContentFileLocationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateOfficialContentFileLocationOK creates a AdminUpdateOfficialContentFileLocationOK with default headers values
func NewAdminUpdateOfficialContentFileLocationOK() *AdminUpdateOfficialContentFileLocationOK {
	return &AdminUpdateOfficialContentFileLocationOK{}
}

/*AdminUpdateOfficialContentFileLocationOK handles this case with default header values.

  OK
*/
type AdminUpdateOfficialContentFileLocationOK struct {
	Payload *ugcclientmodels.ModelsUpdateContentResponseV2
}

func (o *AdminUpdateOfficialContentFileLocationOK) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateOfficialContentFileLocationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentFileLocationOK) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentFileLocationOK) GetPayload() *ugcclientmodels.ModelsUpdateContentResponseV2 {
	return o.Payload
}

func (o *AdminUpdateOfficialContentFileLocationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsUpdateContentResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateOfficialContentFileLocationBadRequest creates a AdminUpdateOfficialContentFileLocationBadRequest with default headers values
func NewAdminUpdateOfficialContentFileLocationBadRequest() *AdminUpdateOfficialContentFileLocationBadRequest {
	return &AdminUpdateOfficialContentFileLocationBadRequest{}
}

/*AdminUpdateOfficialContentFileLocationBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdateOfficialContentFileLocationBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentFileLocationBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateOfficialContentFileLocationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentFileLocationBadRequest) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentFileLocationBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentFileLocationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentFileLocationUnauthorized creates a AdminUpdateOfficialContentFileLocationUnauthorized with default headers values
func NewAdminUpdateOfficialContentFileLocationUnauthorized() *AdminUpdateOfficialContentFileLocationUnauthorized {
	return &AdminUpdateOfficialContentFileLocationUnauthorized{}
}

/*AdminUpdateOfficialContentFileLocationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateOfficialContentFileLocationUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentFileLocationUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateOfficialContentFileLocationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentFileLocationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentFileLocationUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentFileLocationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentFileLocationForbidden creates a AdminUpdateOfficialContentFileLocationForbidden with default headers values
func NewAdminUpdateOfficialContentFileLocationForbidden() *AdminUpdateOfficialContentFileLocationForbidden {
	return &AdminUpdateOfficialContentFileLocationForbidden{}
}

/*AdminUpdateOfficialContentFileLocationForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateOfficialContentFileLocationForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentFileLocationForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateOfficialContentFileLocationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentFileLocationForbidden) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentFileLocationForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentFileLocationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentFileLocationNotFound creates a AdminUpdateOfficialContentFileLocationNotFound with default headers values
func NewAdminUpdateOfficialContentFileLocationNotFound() *AdminUpdateOfficialContentFileLocationNotFound {
	return &AdminUpdateOfficialContentFileLocationNotFound{}
}

/*AdminUpdateOfficialContentFileLocationNotFound handles this case with default header values.

  Not Found
*/
type AdminUpdateOfficialContentFileLocationNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentFileLocationNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateOfficialContentFileLocationNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentFileLocationNotFound) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentFileLocationNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentFileLocationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateOfficialContentFileLocationInternalServerError creates a AdminUpdateOfficialContentFileLocationInternalServerError with default headers values
func NewAdminUpdateOfficialContentFileLocationInternalServerError() *AdminUpdateOfficialContentFileLocationInternalServerError {
	return &AdminUpdateOfficialContentFileLocationInternalServerError{}
}

/*AdminUpdateOfficialContentFileLocationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdateOfficialContentFileLocationInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminUpdateOfficialContentFileLocationInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/fileLocation][%d] adminUpdateOfficialContentFileLocationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateOfficialContentFileLocationInternalServerError) ToJSONString() string {
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

func (o *AdminUpdateOfficialContentFileLocationInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateOfficialContentFileLocationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
