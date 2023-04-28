// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package section

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// QuerySectionsReader is a Reader for the QuerySections structure.
type QuerySectionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QuerySectionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQuerySectionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQuerySectionsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewQuerySectionsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/sections returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQuerySectionsOK creates a QuerySectionsOK with default headers values
func NewQuerySectionsOK() *QuerySectionsOK {
	return &QuerySectionsOK{}
}

/*QuerySectionsOK handles this case with default header values.

  successful operation
*/
type QuerySectionsOK struct {
	Payload *platformclientmodels.SectionPagingSlicedResult
}

func (o *QuerySectionsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/sections][%d] querySectionsOK  %+v", 200, o.ToJSONString())
}

func (o *QuerySectionsOK) ToJSONString() string {
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

func (o *QuerySectionsOK) GetPayload() *platformclientmodels.SectionPagingSlicedResult {
	return o.Payload
}

func (o *QuerySectionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SectionPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySectionsNotFound creates a QuerySectionsNotFound with default headers values
func NewQuerySectionsNotFound() *QuerySectionsNotFound {
	return &QuerySectionsNotFound{}
}

/*QuerySectionsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30142</td><td>Published store does not exist in namespace [{namespace}]</td></tr></table>
*/
type QuerySectionsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *QuerySectionsNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/sections][%d] querySectionsNotFound  %+v", 404, o.ToJSONString())
}

func (o *QuerySectionsNotFound) ToJSONString() string {
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

func (o *QuerySectionsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QuerySectionsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQuerySectionsUnprocessableEntity creates a QuerySectionsUnprocessableEntity with default headers values
func NewQuerySectionsUnprocessableEntity() *QuerySectionsUnprocessableEntity {
	return &QuerySectionsUnprocessableEntity{}
}

/*QuerySectionsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type QuerySectionsUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *QuerySectionsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/sections][%d] querySectionsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *QuerySectionsUnprocessableEntity) ToJSONString() string {
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

func (o *QuerySectionsUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *QuerySectionsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
