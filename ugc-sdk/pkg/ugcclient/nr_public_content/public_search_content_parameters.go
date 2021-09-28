// Code generated by go-swagger; DO NOT EDIT.

package nr_public_content

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

// NewPublicSearchContentParams creates a new PublicSearchContentParams object
// with the default values initialized.
func NewPublicSearchContentParams() *PublicSearchContentParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &PublicSearchContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSearchContentParamsWithTimeout creates a new PublicSearchContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSearchContentParamsWithTimeout(timeout time.Duration) *PublicSearchContentParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &PublicSearchContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicSearchContentParamsWithContext creates a new PublicSearchContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSearchContentParamsWithContext(ctx context.Context) *PublicSearchContentParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &PublicSearchContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicSearchContentParamsWithHTTPClient creates a new PublicSearchContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSearchContentParamsWithHTTPClient(client *http.Client) *PublicSearchContentParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &PublicSearchContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicSearchContentParams contains all the parameters to send to the API endpoint
for the public search content operation typically these are written to a http.Request
*/
type PublicSearchContentParams struct {

	/*Creator
	  creator name

	*/
	Creator *string
	/*Isofficial
	  filter only official contents (boolean)

	*/
	Isofficial *string
	/*Limit
	  number of content per page

	*/
	Limit *string
	/*Name
	  content name

	*/
	Name *string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Offset
	  the offset number to retrieve

	*/
	Offset *string
	/*Orderby
	  sorting order: asc, desc. default=desc

	*/
	Orderby *string
	/*Sortby
	  sorting criteria: name,download,like,date. default=date

	*/
	Sortby *string
	/*Subtype
	  content subtype

	*/
	Subtype *string
	/*Tags
	  content tag

	*/
	Tags *string
	/*Type
	  content type

	*/
	Type *string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public search content params
func (o *PublicSearchContentParams) WithTimeout(timeout time.Duration) *PublicSearchContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public search content params
func (o *PublicSearchContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public search content params
func (o *PublicSearchContentParams) WithContext(ctx context.Context) *PublicSearchContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public search content params
func (o *PublicSearchContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public search content params
func (o *PublicSearchContentParams) WithHTTPClient(client *http.Client) *PublicSearchContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public search content params
func (o *PublicSearchContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithCreator adds the creator to the public search content params
func (o *PublicSearchContentParams) WithCreator(creator *string) *PublicSearchContentParams {
	o.SetCreator(creator)
	return o
}

// SetCreator adds the creator to the public search content params
func (o *PublicSearchContentParams) SetCreator(creator *string) {
	o.Creator = creator
}

// WithIsofficial adds the isofficial to the public search content params
func (o *PublicSearchContentParams) WithIsofficial(isofficial *string) *PublicSearchContentParams {
	o.SetIsofficial(isofficial)
	return o
}

// SetIsofficial adds the isofficial to the public search content params
func (o *PublicSearchContentParams) SetIsofficial(isofficial *string) {
	o.Isofficial = isofficial
}

// WithLimit adds the limit to the public search content params
func (o *PublicSearchContentParams) WithLimit(limit *string) *PublicSearchContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public search content params
func (o *PublicSearchContentParams) SetLimit(limit *string) {
	o.Limit = limit
}

// WithName adds the name to the public search content params
func (o *PublicSearchContentParams) WithName(name *string) *PublicSearchContentParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the public search content params
func (o *PublicSearchContentParams) SetName(name *string) {
	o.Name = name
}

// WithNamespace adds the namespace to the public search content params
func (o *PublicSearchContentParams) WithNamespace(namespace string) *PublicSearchContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public search content params
func (o *PublicSearchContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the public search content params
func (o *PublicSearchContentParams) WithOffset(offset *string) *PublicSearchContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public search content params
func (o *PublicSearchContentParams) SetOffset(offset *string) {
	o.Offset = offset
}

// WithOrderby adds the orderby to the public search content params
func (o *PublicSearchContentParams) WithOrderby(orderby *string) *PublicSearchContentParams {
	o.SetOrderby(orderby)
	return o
}

// SetOrderby adds the orderby to the public search content params
func (o *PublicSearchContentParams) SetOrderby(orderby *string) {
	o.Orderby = orderby
}

// WithSortby adds the sortby to the public search content params
func (o *PublicSearchContentParams) WithSortby(sortby *string) *PublicSearchContentParams {
	o.SetSortby(sortby)
	return o
}

// SetSortby adds the sortby to the public search content params
func (o *PublicSearchContentParams) SetSortby(sortby *string) {
	o.Sortby = sortby
}

// WithSubtype adds the subtype to the public search content params
func (o *PublicSearchContentParams) WithSubtype(subtype *string) *PublicSearchContentParams {
	o.SetSubtype(subtype)
	return o
}

// SetSubtype adds the subtype to the public search content params
func (o *PublicSearchContentParams) SetSubtype(subtype *string) {
	o.Subtype = subtype
}

// WithTags adds the tags to the public search content params
func (o *PublicSearchContentParams) WithTags(tags *string) *PublicSearchContentParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public search content params
func (o *PublicSearchContentParams) SetTags(tags *string) {
	o.Tags = tags
}

// WithType adds the typeVar to the public search content params
func (o *PublicSearchContentParams) WithType(typeVar *string) *PublicSearchContentParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the public search content params
func (o *PublicSearchContentParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSearchContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Creator != nil {

		// query param creator
		var qrCreator string
		if o.Creator != nil {
			qrCreator = *o.Creator
		}
		qCreator := qrCreator
		if qCreator != "" {
			if err := r.SetQueryParam("creator", qCreator); err != nil {
				return err
			}
		}

	}

	if o.Isofficial != nil {

		// query param isofficial
		var qrIsofficial string
		if o.Isofficial != nil {
			qrIsofficial = *o.Isofficial
		}
		qIsofficial := qrIsofficial
		if qIsofficial != "" {
			if err := r.SetQueryParam("isofficial", qIsofficial); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit string
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := qrLimit
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Offset != nil {

		// query param offset
		var qrOffset string
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := qrOffset
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Orderby != nil {

		// query param orderby
		var qrOrderby string
		if o.Orderby != nil {
			qrOrderby = *o.Orderby
		}
		qOrderby := qrOrderby
		if qOrderby != "" {
			if err := r.SetQueryParam("orderby", qOrderby); err != nil {
				return err
			}
		}

	}

	if o.Sortby != nil {

		// query param sortby
		var qrSortby string
		if o.Sortby != nil {
			qrSortby = *o.Sortby
		}
		qSortby := qrSortby
		if qSortby != "" {
			if err := r.SetQueryParam("sortby", qSortby); err != nil {
				return err
			}
		}

	}

	if o.Subtype != nil {

		// query param subtype
		var qrSubtype string
		if o.Subtype != nil {
			qrSubtype = *o.Subtype
		}
		qSubtype := qrSubtype
		if qSubtype != "" {
			if err := r.SetQueryParam("subtype", qSubtype); err != nil {
				return err
			}
		}

	}

	if o.Tags != nil {

		// query param tags
		var qrTags string
		if o.Tags != nil {
			qrTags = *o.Tags
		}
		qTags := qrTags
		if qTags != "" {
			if err := r.SetQueryParam("tags", qTags); err != nil {
				return err
			}
		}

	}

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
