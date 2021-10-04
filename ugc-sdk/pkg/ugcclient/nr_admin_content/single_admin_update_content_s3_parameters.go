// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_content

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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewSingleAdminUpdateContentS3Params creates a new SingleAdminUpdateContentS3Params object
// with the default values initialized.
func NewSingleAdminUpdateContentS3Params() *SingleAdminUpdateContentS3Params {
	var ()
	return &SingleAdminUpdateContentS3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminUpdateContentS3ParamsWithTimeout creates a new SingleAdminUpdateContentS3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminUpdateContentS3ParamsWithTimeout(timeout time.Duration) *SingleAdminUpdateContentS3Params {
	var ()
	return &SingleAdminUpdateContentS3Params{

		timeout: timeout,
	}
}

// NewSingleAdminUpdateContentS3ParamsWithContext creates a new SingleAdminUpdateContentS3Params object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminUpdateContentS3ParamsWithContext(ctx context.Context) *SingleAdminUpdateContentS3Params {
	var ()
	return &SingleAdminUpdateContentS3Params{

		Context: ctx,
	}
}

// NewSingleAdminUpdateContentS3ParamsWithHTTPClient creates a new SingleAdminUpdateContentS3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminUpdateContentS3ParamsWithHTTPClient(client *http.Client) *SingleAdminUpdateContentS3Params {
	var ()
	return &SingleAdminUpdateContentS3Params{
		HTTPClient: client,
	}
}

/*SingleAdminUpdateContentS3Params contains all the parameters to send to the API endpoint
for the single admin update content s3 operation typically these are written to a http.Request
*/
type SingleAdminUpdateContentS3Params struct {

	/*Body*/
	Body *ugcclientmodels.ModelsCreateContentRequestS3
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithTimeout(timeout time.Duration) *SingleAdminUpdateContentS3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithContext(ctx context.Context) *SingleAdminUpdateContentS3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithHTTPClient(client *http.Client) *SingleAdminUpdateContentS3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithBody(body *ugcclientmodels.ModelsCreateContentRequestS3) *SingleAdminUpdateContentS3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetBody(body *ugcclientmodels.ModelsCreateContentRequestS3) {
	o.Body = body
}

// WithChannelID adds the channelID to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithChannelID(channelID string) *SingleAdminUpdateContentS3Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithContentID(contentID string) *SingleAdminUpdateContentS3Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) WithNamespace(namespace string) *SingleAdminUpdateContentS3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin update content s3 params
func (o *SingleAdminUpdateContentS3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminUpdateContentS3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}