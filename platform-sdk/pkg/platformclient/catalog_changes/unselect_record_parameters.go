// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// NewUnselectRecordParams creates a new UnselectRecordParams object
// with the default values initialized.
func NewUnselectRecordParams() *UnselectRecordParams {
	var ()
	return &UnselectRecordParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnselectRecordParamsWithTimeout creates a new UnselectRecordParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnselectRecordParamsWithTimeout(timeout time.Duration) *UnselectRecordParams {
	var ()
	return &UnselectRecordParams{

		timeout: timeout,
	}
}

// NewUnselectRecordParamsWithContext creates a new UnselectRecordParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnselectRecordParamsWithContext(ctx context.Context) *UnselectRecordParams {
	var ()
	return &UnselectRecordParams{

		Context: ctx,
	}
}

// NewUnselectRecordParamsWithHTTPClient creates a new UnselectRecordParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnselectRecordParamsWithHTTPClient(client *http.Client) *UnselectRecordParams {
	var ()
	return &UnselectRecordParams{
		HTTPClient: client,
	}
}

/*UnselectRecordParams contains all the parameters to send to the API endpoint
for the unselect record operation typically these are written to a http.Request
*/
type UnselectRecordParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChangeID*/
	ChangeID string
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the unselect record params
func (o *UnselectRecordParams) WithTimeout(timeout time.Duration) *UnselectRecordParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unselect record params
func (o *UnselectRecordParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unselect record params
func (o *UnselectRecordParams) WithContext(ctx context.Context) *UnselectRecordParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unselect record params
func (o *UnselectRecordParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unselect record params
func (o *UnselectRecordParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unselect record params
func (o *UnselectRecordParams) WithHTTPClient(client *http.Client) *UnselectRecordParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unselect record params
func (o *UnselectRecordParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unselect record params
func (o *UnselectRecordParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UnselectRecordParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChangeID adds the changeID to the unselect record params
func (o *UnselectRecordParams) WithChangeID(changeID string) *UnselectRecordParams {
	o.SetChangeID(changeID)
	return o
}

// SetChangeID adds the changeId to the unselect record params
func (o *UnselectRecordParams) SetChangeID(changeID string) {
	o.ChangeID = changeID
}

// WithNamespace adds the namespace to the unselect record params
func (o *UnselectRecordParams) WithNamespace(namespace string) *UnselectRecordParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the unselect record params
func (o *UnselectRecordParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the unselect record params
func (o *UnselectRecordParams) WithStoreID(storeID string) *UnselectRecordParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the unselect record params
func (o *UnselectRecordParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UnselectRecordParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param changeId
	if err := r.SetPathParam("changeId", o.ChangeID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
		return err
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
