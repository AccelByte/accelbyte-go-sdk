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

// AdminCopyContentReader is a Reader for the AdminCopyContent structure.
type AdminCopyContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCopyContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCopyContentCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCopyContentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCopyContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCopyContentForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCopyContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCopyContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCopyContentCreated creates a AdminCopyContentCreated with default headers values
func NewAdminCopyContentCreated() *AdminCopyContentCreated {
	return &AdminCopyContentCreated{}
}

/*AdminCopyContentCreated handles this case with default header values.

  contents copied
*/
type AdminCopyContentCreated struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponseV2
}

func (o *AdminCopyContentCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy][%d] adminCopyContentCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCopyContentCreated) ToJSONString() string {
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

func (o *AdminCopyContentCreated) GetPayload() *ugcclientmodels.ModelsContentDownloadResponseV2 {
	return o.Payload
}

func (o *AdminCopyContentCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCopyContentBadRequest creates a AdminCopyContentBadRequest with default headers values
func NewAdminCopyContentBadRequest() *AdminCopyContentBadRequest {
	return &AdminCopyContentBadRequest{}
}

/*AdminCopyContentBadRequest handles this case with default header values.


 */
type AdminCopyContentBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCopyContentBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy][%d] adminCopyContentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCopyContentBadRequest) ToJSONString() string {
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

func (o *AdminCopyContentBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCopyContentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCopyContentUnauthorized creates a AdminCopyContentUnauthorized with default headers values
func NewAdminCopyContentUnauthorized() *AdminCopyContentUnauthorized {
	return &AdminCopyContentUnauthorized{}
}

/*AdminCopyContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCopyContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCopyContentUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy][%d] adminCopyContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCopyContentUnauthorized) ToJSONString() string {
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

func (o *AdminCopyContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCopyContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCopyContentForbidden creates a AdminCopyContentForbidden with default headers values
func NewAdminCopyContentForbidden() *AdminCopyContentForbidden {
	return &AdminCopyContentForbidden{}
}

/*AdminCopyContentForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminCopyContentForbidden struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCopyContentForbidden) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy][%d] adminCopyContentForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCopyContentForbidden) ToJSONString() string {
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

func (o *AdminCopyContentForbidden) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCopyContentForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCopyContentNotFound creates a AdminCopyContentNotFound with default headers values
func NewAdminCopyContentNotFound() *AdminCopyContentNotFound {
	return &AdminCopyContentNotFound{}
}

/*AdminCopyContentNotFound handles this case with default header values.


 */
type AdminCopyContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCopyContentNotFound) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy][%d] adminCopyContentNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCopyContentNotFound) ToJSONString() string {
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

func (o *AdminCopyContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCopyContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCopyContentInternalServerError creates a AdminCopyContentInternalServerError with default headers values
func NewAdminCopyContentInternalServerError() *AdminCopyContentInternalServerError {
	return &AdminCopyContentInternalServerError{}
}

/*AdminCopyContentInternalServerError handles this case with default header values.


 */
type AdminCopyContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCopyContentInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}/copy][%d] adminCopyContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCopyContentInternalServerError) ToJSONString() string {
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

func (o *AdminCopyContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCopyContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
