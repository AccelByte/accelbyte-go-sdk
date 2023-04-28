// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package bans

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

// GetListBanReasonReader is a Reader for the GetListBanReason structure.
type GetListBanReasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListBanReasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListBanReasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListBanReasonUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListBanReasonForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/bans/reasons returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListBanReasonOK creates a GetListBanReasonOK with default headers values
func NewGetListBanReasonOK() *GetListBanReasonOK {
	return &GetListBanReasonOK{}
}

/*GetListBanReasonOK handles this case with default header values.

  OK
*/
type GetListBanReasonOK struct {
	Payload *iamclientmodels.AccountcommonBanReasons
}

func (o *GetListBanReasonOK) Error() string {
	return fmt.Sprintf("[GET /iam/bans/reasons][%d] getListBanReasonOK  %+v", 200, o.ToJSONString())
}

func (o *GetListBanReasonOK) ToJSONString() string {
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

func (o *GetListBanReasonOK) GetPayload() *iamclientmodels.AccountcommonBanReasons {
	return o.Payload
}

func (o *GetListBanReasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonBanReasons)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListBanReasonUnauthorized creates a GetListBanReasonUnauthorized with default headers values
func NewGetListBanReasonUnauthorized() *GetListBanReasonUnauthorized {
	return &GetListBanReasonUnauthorized{}
}

/*GetListBanReasonUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetListBanReasonUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetListBanReasonUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/bans/reasons][%d] getListBanReasonUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListBanReasonUnauthorized) ToJSONString() string {
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

func (o *GetListBanReasonUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetListBanReasonUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetListBanReasonForbidden creates a GetListBanReasonForbidden with default headers values
func NewGetListBanReasonForbidden() *GetListBanReasonForbidden {
	return &GetListBanReasonForbidden{}
}

/*GetListBanReasonForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetListBanReasonForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetListBanReasonForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/bans/reasons][%d] getListBanReasonForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListBanReasonForbidden) ToJSONString() string {
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

func (o *GetListBanReasonForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetListBanReasonForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
