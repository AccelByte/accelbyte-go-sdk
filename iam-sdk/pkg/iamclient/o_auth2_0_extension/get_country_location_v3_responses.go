// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// GetCountryLocationV3Reader is a Reader for the GetCountryLocationV3 structure.
type GetCountryLocationV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetCountryLocationV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetCountryLocationV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/location/country returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetCountryLocationV3OK creates a GetCountryLocationV3OK with default headers values
func NewGetCountryLocationV3OK() *GetCountryLocationV3OK {
	return &GetCountryLocationV3OK{}
}

/*GetCountryLocationV3OK handles this case with default header values.

  Country Location info returned
*/
type GetCountryLocationV3OK struct {
	Payload *iamclientmodels.OauthmodelCountryLocationResponse
}

func (o *GetCountryLocationV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/location/country][%d] getCountryLocationV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetCountryLocationV3OK) ToJSONString() string {
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

func (o *GetCountryLocationV3OK) GetPayload() *iamclientmodels.OauthmodelCountryLocationResponse {
	return o.Payload
}

func (o *GetCountryLocationV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelCountryLocationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
