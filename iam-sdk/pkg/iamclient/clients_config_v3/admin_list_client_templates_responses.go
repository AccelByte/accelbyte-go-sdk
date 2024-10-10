// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients_config_v3

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminListClientTemplatesReader is a Reader for the AdminListClientTemplates structure.
type AdminListClientTemplatesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListClientTemplatesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListClientTemplatesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListClientTemplatesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListClientTemplatesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/clientConfig/templates returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListClientTemplatesOK creates a AdminListClientTemplatesOK with default headers values
func NewAdminListClientTemplatesOK() *AdminListClientTemplatesOK {
	return &AdminListClientTemplatesOK{}
}

/*AdminListClientTemplatesOK handles this case with default header values.

  OK
*/
type AdminListClientTemplatesOK struct {
	Payload *iamclientmodels.ClientmodelListTemplatesResponse
}

func (o *AdminListClientTemplatesOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/clientConfig/templates][%d] adminListClientTemplatesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListClientTemplatesOK) ToJSONString() string {
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

func (o *AdminListClientTemplatesOK) GetPayload() *iamclientmodels.ClientmodelListTemplatesResponse {
	return o.Payload
}

func (o *AdminListClientTemplatesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelListTemplatesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListClientTemplatesUnauthorized creates a AdminListClientTemplatesUnauthorized with default headers values
func NewAdminListClientTemplatesUnauthorized() *AdminListClientTemplatesUnauthorized {
	return &AdminListClientTemplatesUnauthorized{}
}

/*AdminListClientTemplatesUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListClientTemplatesUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListClientTemplatesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/clientConfig/templates][%d] adminListClientTemplatesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListClientTemplatesUnauthorized) ToJSONString() string {
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

func (o *AdminListClientTemplatesUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListClientTemplatesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListClientTemplatesForbidden creates a AdminListClientTemplatesForbidden with default headers values
func NewAdminListClientTemplatesForbidden() *AdminListClientTemplatesForbidden {
	return &AdminListClientTemplatesForbidden{}
}

/*AdminListClientTemplatesForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminListClientTemplatesForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminListClientTemplatesForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/clientConfig/templates][%d] adminListClientTemplatesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListClientTemplatesForbidden) ToJSONString() string {
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

func (o *AdminListClientTemplatesForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminListClientTemplatesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
