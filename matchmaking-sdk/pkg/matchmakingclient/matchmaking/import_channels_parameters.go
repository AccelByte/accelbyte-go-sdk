// Code generated by go-swagger; DO NOT EDIT.

package matchmaking

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

// NewImportChannelsParams creates a new ImportChannelsParams object
// with the default values initialized.
func NewImportChannelsParams() *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportChannelsParamsWithTimeout creates a new ImportChannelsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportChannelsParamsWithTimeout(timeout time.Duration) *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{

		timeout: timeout,
	}
}

// NewImportChannelsParamsWithContext creates a new ImportChannelsParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportChannelsParamsWithContext(ctx context.Context) *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{

		Context: ctx,
	}
}

// NewImportChannelsParamsWithHTTPClient creates a new ImportChannelsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportChannelsParamsWithHTTPClient(client *http.Client) *ImportChannelsParams {
	var ()
	return &ImportChannelsParams{
		HTTPClient: client,
	}
}

/*ImportChannelsParams contains all the parameters to send to the API endpoint
for the import channels operation typically these are written to a http.Request
*/
type ImportChannelsParams struct {

	/*File
	  file to be imported

	*/
	File runtime.NamedReadCloser
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*Strategy
	  strategy for import

	*/
	Strategy *string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the import channels params
func (o *ImportChannelsParams) WithTimeout(timeout time.Duration) *ImportChannelsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import channels params
func (o *ImportChannelsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import channels params
func (o *ImportChannelsParams) WithContext(ctx context.Context) *ImportChannelsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import channels params
func (o *ImportChannelsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the import channels params
func (o *ImportChannelsParams) WithHTTPClient(client *http.Client) *ImportChannelsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import channels params
func (o *ImportChannelsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithFile adds the file to the import channels params
func (o *ImportChannelsParams) WithFile(file runtime.NamedReadCloser) *ImportChannelsParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import channels params
func (o *ImportChannelsParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import channels params
func (o *ImportChannelsParams) WithNamespace(namespace string) *ImportChannelsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import channels params
func (o *ImportChannelsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStrategy adds the strategy to the import channels params
func (o *ImportChannelsParams) WithStrategy(strategy *string) *ImportChannelsParams {
	o.SetStrategy(strategy)
	return o
}

// SetStrategy adds the strategy to the import channels params
func (o *ImportChannelsParams) SetStrategy(strategy *string) {
	o.Strategy = strategy
}

// WriteToRequest writes these params to a swagger request
func (o *ImportChannelsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Strategy != nil {

		// form param strategy
		var frStrategy string
		if o.Strategy != nil {
			frStrategy = *o.Strategy
		}
		fStrategy := frStrategy
		if fStrategy != "" {
			if err := r.SetFormParam("strategy", fStrategy); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
