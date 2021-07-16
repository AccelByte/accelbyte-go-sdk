// Code generated by go-swagger; DO NOT EDIT.

package category

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicGetRootCategoriesParams creates a new PublicGetRootCategoriesParams object
// with the default values initialized.
func NewPublicGetRootCategoriesParams() *PublicGetRootCategoriesParams {
	var ()
	return &PublicGetRootCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetRootCategoriesParamsWithTimeout creates a new PublicGetRootCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetRootCategoriesParamsWithTimeout(timeout time.Duration) *PublicGetRootCategoriesParams {
	var ()
	return &PublicGetRootCategoriesParams{

		timeout: timeout,
	}
}

// NewPublicGetRootCategoriesParamsWithContext creates a new PublicGetRootCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetRootCategoriesParamsWithContext(ctx context.Context) *PublicGetRootCategoriesParams {
	var ()
	return &PublicGetRootCategoriesParams{

		Context: ctx,
	}
}

// NewPublicGetRootCategoriesParamsWithHTTPClient creates a new PublicGetRootCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetRootCategoriesParamsWithHTTPClient(client *http.Client) *PublicGetRootCategoriesParams {
	var ()
	return &PublicGetRootCategoriesParams{
		HTTPClient: client,
	}
}

/*PublicGetRootCategoriesParams contains all the parameters to send to the API endpoint
for the public get root categories operation typically these are written to a http.Request
*/
type PublicGetRootCategoriesParams struct {

	/*Language*/
	Language *string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public get root categories params
func (o *PublicGetRootCategoriesParams) WithTimeout(timeout time.Duration) *PublicGetRootCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get root categories params
func (o *PublicGetRootCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get root categories params
func (o *PublicGetRootCategoriesParams) WithContext(ctx context.Context) *PublicGetRootCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get root categories params
func (o *PublicGetRootCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public get root categories params
func (o *PublicGetRootCategoriesParams) WithHTTPClient(client *http.Client) *PublicGetRootCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get root categories params
func (o *PublicGetRootCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithLanguage adds the language to the public get root categories params
func (o *PublicGetRootCategoriesParams) WithLanguage(language *string) *PublicGetRootCategoriesParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get root categories params
func (o *PublicGetRootCategoriesParams) SetLanguage(language *string) {
	o.Language = language
}

// WithNamespace adds the namespace to the public get root categories params
func (o *PublicGetRootCategoriesParams) WithNamespace(namespace string) *PublicGetRootCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get root categories params
func (o *PublicGetRootCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the public get root categories params
func (o *PublicGetRootCategoriesParams) WithStoreID(storeID *string) *PublicGetRootCategoriesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get root categories params
func (o *PublicGetRootCategoriesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetRootCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Language != nil {

		// query param language
		var qrLanguage string
		if o.Language != nil {
			qrLanguage = *o.Language
		}
		qLanguage := qrLanguage
		if qLanguage != "" {
			if err := r.SetQueryParam("language", qLanguage); err != nil {
				return err
			}
		}

	}

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
