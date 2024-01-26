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
)

// NewGetSectionParams creates a new GetSectionParams object
// with the default values initialized.
func NewGetSectionParams() *GetSectionParams {
	var ()
	return &GetSectionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSectionParamsWithTimeout creates a new GetSectionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSectionParamsWithTimeout(timeout time.Duration) *GetSectionParams {
	var ()
	return &GetSectionParams{

		timeout: timeout,
	}
}

// NewGetSectionParamsWithContext creates a new GetSectionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSectionParamsWithContext(ctx context.Context) *GetSectionParams {
	var ()
	return &GetSectionParams{

		Context: ctx,
	}
}

// NewGetSectionParamsWithHTTPClient creates a new GetSectionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSectionParamsWithHTTPClient(client *http.Client) *GetSectionParams {
	var ()
	return &GetSectionParams{
		HTTPClient: client,
	}
}

/*GetSectionParams contains all the parameters to send to the API endpoint
for the get section operation typically these are written to a http.Request
*/
type GetSectionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SectionID*/
	SectionID string
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

// WithTimeout adds the timeout to the get section params
func (o *GetSectionParams) WithTimeout(timeout time.Duration) *GetSectionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get section params
func (o *GetSectionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get section params
func (o *GetSectionParams) WithContext(ctx context.Context) *GetSectionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get section params
func (o *GetSectionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get section params
func (o *GetSectionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get section params
func (o *GetSectionParams) WithHTTPClient(client *http.Client) *GetSectionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get section params
func (o *GetSectionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get section params
func (o *GetSectionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSectionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get section params
func (o *GetSectionParams) WithNamespace(namespace string) *GetSectionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get section params
func (o *GetSectionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSectionID adds the sectionID to the get section params
func (o *GetSectionParams) WithSectionID(sectionID string) *GetSectionParams {
	o.SetSectionID(sectionID)
	return o
}

// SetSectionID adds the sectionId to the get section params
func (o *GetSectionParams) SetSectionID(sectionID string) {
	o.SectionID = sectionID
}

// WithStoreID adds the storeID to the get section params
func (o *GetSectionParams) WithStoreID(storeID *string) *GetSectionParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get section params
func (o *GetSectionParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetSectionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sectionId
	if err := r.SetPathParam("sectionId", o.SectionID); err != nil {
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
