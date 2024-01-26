// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package section

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewQuerySectionsParams creates a new QuerySectionsParams object
// with the default values initialized.
func NewQuerySectionsParams() *QuerySectionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySectionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQuerySectionsParamsWithTimeout creates a new QuerySectionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQuerySectionsParamsWithTimeout(timeout time.Duration) *QuerySectionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySectionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQuerySectionsParamsWithContext creates a new QuerySectionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQuerySectionsParamsWithContext(ctx context.Context) *QuerySectionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySectionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQuerySectionsParamsWithHTTPClient creates a new QuerySectionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQuerySectionsParamsWithHTTPClient(client *http.Client) *QuerySectionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySectionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QuerySectionsParams contains all the parameters to send to the API endpoint
for the query sections operation typically these are written to a http.Request
*/
type QuerySectionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*End
	  section active range time end, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	End *string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*Start
	  section active range time start , using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	Start *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*ViewID*/
	ViewID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query sections params
func (o *QuerySectionsParams) WithTimeout(timeout time.Duration) *QuerySectionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query sections params
func (o *QuerySectionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query sections params
func (o *QuerySectionsParams) WithContext(ctx context.Context) *QuerySectionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query sections params
func (o *QuerySectionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query sections params
func (o *QuerySectionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query sections params
func (o *QuerySectionsParams) WithHTTPClient(client *http.Client) *QuerySectionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query sections params
func (o *QuerySectionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query sections params
func (o *QuerySectionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QuerySectionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query sections params
func (o *QuerySectionsParams) WithNamespace(namespace string) *QuerySectionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query sections params
func (o *QuerySectionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEnd adds the end to the query sections params
func (o *QuerySectionsParams) WithEnd(end *string) *QuerySectionsParams {
	o.SetEnd(end)
	return o
}

// SetEnd adds the end to the query sections params
func (o *QuerySectionsParams) SetEnd(end *string) {
	o.End = end
}

// WithLimit adds the limit to the query sections params
func (o *QuerySectionsParams) WithLimit(limit *int32) *QuerySectionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query sections params
func (o *QuerySectionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query sections params
func (o *QuerySectionsParams) WithOffset(offset *int32) *QuerySectionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query sections params
func (o *QuerySectionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStart adds the start to the query sections params
func (o *QuerySectionsParams) WithStart(start *string) *QuerySectionsParams {
	o.SetStart(start)
	return o
}

// SetStart adds the start to the query sections params
func (o *QuerySectionsParams) SetStart(start *string) {
	o.Start = start
}

// WithStoreID adds the storeID to the query sections params
func (o *QuerySectionsParams) WithStoreID(storeID *string) *QuerySectionsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the query sections params
func (o *QuerySectionsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithViewID adds the viewID to the query sections params
func (o *QuerySectionsParams) WithViewID(viewID *string) *QuerySectionsParams {
	o.SetViewID(viewID)
	return o
}

// SetViewID adds the viewId to the query sections params
func (o *QuerySectionsParams) SetViewID(viewID *string) {
	o.ViewID = viewID
}

// WriteToRequest writes these params to a swagger request
func (o *QuerySectionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.End != nil {

		// query param end
		var qrEnd string
		if o.End != nil {
			qrEnd = *o.End
		}
		qEnd := qrEnd
		if qEnd != "" {
			if err := r.SetQueryParam("end", qEnd); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Start != nil {

		// query param start
		var qrStart string
		if o.Start != nil {
			qrStart = *o.Start
		}
		qStart := qrStart
		if qStart != "" {
			if err := r.SetQueryParam("start", qStart); err != nil {
				return err
			}
		}

	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

	}

	if o.ViewID != nil {

		// query param viewId
		var qrViewID string
		if o.ViewID != nil {
			qrViewID = *o.ViewID
		}
		qViewID := qrViewID
		if qViewID != "" {
			if err := r.SetQueryParam("viewId", qViewID); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
