// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// GetRevocationListReader is a Reader for the GetRevocationList structure.
type GetRevocationListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRevocationListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRevocationListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRevocationListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/oauth/revocationlist returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRevocationListOK creates a GetRevocationListOK with default headers values
func NewGetRevocationListOK() *GetRevocationListOK {
	return &GetRevocationListOK{}
}

/*GetRevocationListOK handles this case with default header values.

  revocation list returned
*/
type GetRevocationListOK struct {
	Payload *iamclientmodels.OauthapiRevocationList
}

func (o *GetRevocationListOK) Error() string {
	return fmt.Sprintf("[GET /iam/oauth/revocationlist][%d] getRevocationListOK  %+v", 200, o.ToJSONString())
}

func (o *GetRevocationListOK) ToJSONString() string {
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

func (o *GetRevocationListOK) GetPayload() *iamclientmodels.OauthapiRevocationList {
	return o.Payload
}

func (o *GetRevocationListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthapiRevocationList)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRevocationListUnauthorized creates a GetRevocationListUnauthorized with default headers values
func NewGetRevocationListUnauthorized() *GetRevocationListUnauthorized {
	return &GetRevocationListUnauthorized{}
}

/*GetRevocationListUnauthorized handles this case with default header values.

  Invalid basic auth header
*/
type GetRevocationListUnauthorized struct {
}

func (o *GetRevocationListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/oauth/revocationlist][%d] getRevocationListUnauthorized ", 401)
}

func (o *GetRevocationListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
