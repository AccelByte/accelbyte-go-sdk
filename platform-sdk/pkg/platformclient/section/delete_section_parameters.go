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

// NewDeleteSectionParams creates a new DeleteSectionParams object
// with the default values initialized.
func NewDeleteSectionParams() *DeleteSectionParams {
	var ()
	return &DeleteSectionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSectionParamsWithTimeout creates a new DeleteSectionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSectionParamsWithTimeout(timeout time.Duration) *DeleteSectionParams {
	var ()
	return &DeleteSectionParams{

		timeout: timeout,
	}
}

// NewDeleteSectionParamsWithContext creates a new DeleteSectionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSectionParamsWithContext(ctx context.Context) *DeleteSectionParams {
	var ()
	return &DeleteSectionParams{

		Context: ctx,
	}
}

// NewDeleteSectionParamsWithHTTPClient creates a new DeleteSectionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSectionParamsWithHTTPClient(client *http.Client) *DeleteSectionParams {
	var ()
	return &DeleteSectionParams{
		HTTPClient: client,
	}
}

/*DeleteSectionParams contains all the parameters to send to the API endpoint
for the delete section operation typically these are written to a http.Request
*/
type DeleteSectionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SectionID*/
	SectionID string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete section params
func (o *DeleteSectionParams) WithTimeout(timeout time.Duration) *DeleteSectionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete section params
func (o *DeleteSectionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete section params
func (o *DeleteSectionParams) WithContext(ctx context.Context) *DeleteSectionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete section params
func (o *DeleteSectionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete section params
func (o *DeleteSectionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete section params
func (o *DeleteSectionParams) WithHTTPClient(client *http.Client) *DeleteSectionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete section params
func (o *DeleteSectionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete section params
func (o *DeleteSectionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSectionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete section params
func (o *DeleteSectionParams) WithNamespace(namespace string) *DeleteSectionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete section params
func (o *DeleteSectionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSectionID adds the sectionID to the delete section params
func (o *DeleteSectionParams) WithSectionID(sectionID string) *DeleteSectionParams {
	o.SetSectionID(sectionID)
	return o
}

// SetSectionID adds the sectionId to the delete section params
func (o *DeleteSectionParams) SetSectionID(sectionID string) {
	o.SectionID = sectionID
}

// WithStoreID adds the storeID to the delete section params
func (o *DeleteSectionParams) WithStoreID(storeID string) *DeleteSectionParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the delete section params
func (o *DeleteSectionParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSectionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
			return err
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
