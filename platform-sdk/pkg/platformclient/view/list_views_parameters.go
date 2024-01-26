// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package view

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewListViewsParams creates a new ListViewsParams object
// with the default values initialized.
func NewListViewsParams() *ListViewsParams {
	var ()
	return &ListViewsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListViewsParamsWithTimeout creates a new ListViewsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListViewsParamsWithTimeout(timeout time.Duration) *ListViewsParams {
	var ()
	return &ListViewsParams{

		timeout: timeout,
	}
}

// NewListViewsParamsWithContext creates a new ListViewsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListViewsParamsWithContext(ctx context.Context) *ListViewsParams {
	var ()
	return &ListViewsParams{

		Context: ctx,
	}
}

// NewListViewsParamsWithHTTPClient creates a new ListViewsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListViewsParamsWithHTTPClient(client *http.Client) *ListViewsParams {
	var ()
	return &ListViewsParams{
		HTTPClient: client,
	}
}

/*ListViewsParams contains all the parameters to send to the API endpoint
for the list views operation typically these are written to a http.Request
*/
type ListViewsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list views params
func (o *ListViewsParams) WithTimeout(timeout time.Duration) *ListViewsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list views params
func (o *ListViewsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list views params
func (o *ListViewsParams) WithContext(ctx context.Context) *ListViewsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list views params
func (o *ListViewsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list views params
func (o *ListViewsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list views params
func (o *ListViewsParams) WithHTTPClient(client *http.Client) *ListViewsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list views params
func (o *ListViewsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list views params
func (o *ListViewsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListViewsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list views params
func (o *ListViewsParams) WithNamespace(namespace string) *ListViewsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list views params
func (o *ListViewsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the list views params
func (o *ListViewsParams) WithStoreID(storeID *string) *ListViewsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the list views params
func (o *ListViewsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *ListViewsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
