// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewImportStoreByCSVParams creates a new ImportStoreByCSVParams object
// with the default values initialized.
func NewImportStoreByCSVParams() *ImportStoreByCSVParams {
	var ()
	return &ImportStoreByCSVParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportStoreByCSVParamsWithTimeout creates a new ImportStoreByCSVParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportStoreByCSVParamsWithTimeout(timeout time.Duration) *ImportStoreByCSVParams {
	var ()
	return &ImportStoreByCSVParams{

		timeout: timeout,
	}
}

// NewImportStoreByCSVParamsWithContext creates a new ImportStoreByCSVParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportStoreByCSVParamsWithContext(ctx context.Context) *ImportStoreByCSVParams {
	var ()
	return &ImportStoreByCSVParams{

		Context: ctx,
	}
}

// NewImportStoreByCSVParamsWithHTTPClient creates a new ImportStoreByCSVParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportStoreByCSVParamsWithHTTPClient(client *http.Client) *ImportStoreByCSVParams {
	var ()
	return &ImportStoreByCSVParams{
		HTTPClient: client,
	}
}

/*ImportStoreByCSVParams contains all the parameters to send to the API endpoint
for the import store by csv operation typically these are written to a http.Request
*/
type ImportStoreByCSVParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Category*/
	Category runtime.NamedReadCloser
	/*Display*/
	Display runtime.NamedReadCloser
	/*Item*/
	Item runtime.NamedReadCloser
	/*Notes*/
	Notes string
	/*Section*/
	Section runtime.NamedReadCloser
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

// WithTimeout adds the timeout to the import store by csv params
func (o *ImportStoreByCSVParams) WithTimeout(timeout time.Duration) *ImportStoreByCSVParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import store by csv params
func (o *ImportStoreByCSVParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import store by csv params
func (o *ImportStoreByCSVParams) WithContext(ctx context.Context) *ImportStoreByCSVParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import store by csv params
func (o *ImportStoreByCSVParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import store by csv params
func (o *ImportStoreByCSVParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import store by csv params
func (o *ImportStoreByCSVParams) WithHTTPClient(client *http.Client) *ImportStoreByCSVParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import store by csv params
func (o *ImportStoreByCSVParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import store by csv params
func (o *ImportStoreByCSVParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportStoreByCSVParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCategory adds the category to the import store by csv params
func (o *ImportStoreByCSVParams) WithCategory(category runtime.NamedReadCloser) *ImportStoreByCSVParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the import store by csv params
func (o *ImportStoreByCSVParams) SetCategory(category runtime.NamedReadCloser) {
	o.Category = category
}

// WithDisplay adds the display to the import store by csv params
func (o *ImportStoreByCSVParams) WithDisplay(display runtime.NamedReadCloser) *ImportStoreByCSVParams {
	o.SetDisplay(display)
	return o
}

// SetDisplay adds the display to the import store by csv params
func (o *ImportStoreByCSVParams) SetDisplay(display runtime.NamedReadCloser) {
	o.Display = display
}

// WithItem adds the item to the import store by csv params
func (o *ImportStoreByCSVParams) WithItem(item runtime.NamedReadCloser) *ImportStoreByCSVParams {
	o.SetItem(item)
	return o
}

// SetItem adds the item to the import store by csv params
func (o *ImportStoreByCSVParams) SetItem(item runtime.NamedReadCloser) {
	o.Item = item
}

// WithNotes adds the notes to the import store by csv params
func (o *ImportStoreByCSVParams) WithNotes(notes string) *ImportStoreByCSVParams {
	o.SetNotes(notes)
	return o
}

// SetNotes adds the notes to the import store by csv params
func (o *ImportStoreByCSVParams) SetNotes(notes string) {
	o.Notes = notes
}

// WithSection adds the section to the import store by csv params
func (o *ImportStoreByCSVParams) WithSection(section runtime.NamedReadCloser) *ImportStoreByCSVParams {
	o.SetSection(section)
	return o
}

// SetSection adds the section to the import store by csv params
func (o *ImportStoreByCSVParams) SetSection(section runtime.NamedReadCloser) {
	o.Section = section
}

// WithNamespace adds the namespace to the import store by csv params
func (o *ImportStoreByCSVParams) WithNamespace(namespace string) *ImportStoreByCSVParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import store by csv params
func (o *ImportStoreByCSVParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the import store by csv params
func (o *ImportStoreByCSVParams) WithStoreID(storeID string) *ImportStoreByCSVParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the import store by csv params
func (o *ImportStoreByCSVParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *ImportStoreByCSVParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form file param category
	if err := r.SetFileParam("category", o.Category); err != nil {
		return err
	}

	// form file param display
	if err := r.SetFileParam("display", o.Display); err != nil {
		return err
	}

	// form file param item
	if err := r.SetFileParam("item", o.Item); err != nil {
		return err
	}

	// form param notes
	frNotes := o.Notes
	fNotes := frNotes
	if fNotes != "" {
		if err := r.SetFormParam("notes", fNotes); err != nil {
			return err
		}
	}

	// form file param section
	if err := r.SetFileParam("section", o.Section); err != nil {
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
