// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// GetListJusticePlatformAccountsReader is a Reader for the GetListJusticePlatformAccounts structure.
type GetListJusticePlatformAccountsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListJusticePlatformAccountsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListJusticePlatformAccountsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetListJusticePlatformAccountsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListJusticePlatformAccountsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListJusticePlatformAccountsOK creates a GetListJusticePlatformAccountsOK with default headers values
func NewGetListJusticePlatformAccountsOK() *GetListJusticePlatformAccountsOK {
	return &GetListJusticePlatformAccountsOK{}
}

/*GetListJusticePlatformAccountsOK handles this case with default header values.

  OK
*/
type GetListJusticePlatformAccountsOK struct {
	Payload []*iamclientmodels.ModelGetUserMapping
}

func (o *GetListJusticePlatformAccountsOK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] getListJusticePlatformAccountsOK  %+v", 200, o.ToJSONString())
}

func (o *GetListJusticePlatformAccountsOK) ToJSONString() string {
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

func (o *GetListJusticePlatformAccountsOK) GetPayload() []*iamclientmodels.ModelGetUserMapping {
	return o.Payload
}

func (o *GetListJusticePlatformAccountsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetListJusticePlatformAccountsBadRequest creates a GetListJusticePlatformAccountsBadRequest with default headers values
func NewGetListJusticePlatformAccountsBadRequest() *GetListJusticePlatformAccountsBadRequest {
	return &GetListJusticePlatformAccountsBadRequest{}
}

/*GetListJusticePlatformAccountsBadRequest handles this case with default header values.

  Invalid request
*/
type GetListJusticePlatformAccountsBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetListJusticePlatformAccountsBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] getListJusticePlatformAccountsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetListJusticePlatformAccountsBadRequest) ToJSONString() string {
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

func (o *GetListJusticePlatformAccountsBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetListJusticePlatformAccountsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetListJusticePlatformAccountsNotFound creates a GetListJusticePlatformAccountsNotFound with default headers values
func NewGetListJusticePlatformAccountsNotFound() *GetListJusticePlatformAccountsNotFound {
	return &GetListJusticePlatformAccountsNotFound{}
}

/*GetListJusticePlatformAccountsNotFound handles this case with default header values.

  Data not found
*/
type GetListJusticePlatformAccountsNotFound struct {
}

func (o *GetListJusticePlatformAccountsNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice][%d] getListJusticePlatformAccountsNotFound ", 404)
}

func (o *GetListJusticePlatformAccountsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
